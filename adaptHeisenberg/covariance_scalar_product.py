"""phoenix.adaptHeisenberg.covariance_scalar_product

Covariance scalar product utilities for Phoenix ADAA operator objects.

(A, B)_cov(σ0) := Re Tr(σ0 A^† B)

σ0 is a product state (see sigma0.ProductState).
Operators A,B are ADAAs over the Phoenix hierarchical system KeyMap:

    Key labels = (nums_tuple, reduced_word)
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Callable, Dict, List, Optional, Tuple

import numpy as np


# -----------------------------------------------------------------------------
# Reduced Pauli multiplication
# -----------------------------------------------------------------------------

# Single-site table: σ_a σ_b = i^p σ_c
_PAULI_TABLE: Dict[str, Dict[str, Tuple[str, int]]] = {
    "0": {"0": ("0", 0), "x": ("x", 0), "y": ("y", 0), "z": ("z", 0)},
    "x": {"0": ("x", 0), "x": ("0", 0), "y": ("z", 1), "z": ("y", 3)},
    "y": {"0": ("y", 0), "x": ("z", 3), "y": ("0", 0), "z": ("x", 1)},
    "z": {"0": ("z", 0), "x": ("y", 1), "y": ("x", 3), "z": ("0", 0)},
}


def mul_reduced(
    nums_a: Tuple[int, ...],
    word_a: str,
    nums_b: Tuple[int, ...],
    word_b: str,
) -> Tuple[Tuple[int, ...], str, complex]:
    """Multiply two reduced Pauli terms.

    Returns (nums_c, word_c, phase) such that:
        P(nums_a, word_a) * P(nums_b, word_b) = phase * P(nums_c, word_c),
    with phase in {±1, ±i}.
    """
    if len(nums_a) != len(word_a):
        raise ValueError("nums_a and word_a length mismatch")
    if len(nums_b) != len(word_b):
        raise ValueError("nums_b and word_b length mismatch")

    map_a = {int(s): str(w).lower() for s, w in zip(nums_a, word_a) if str(w).lower() != "0"}
    map_b = {int(s): str(w).lower() for s, w in zip(nums_b, word_b) if str(w).lower() != "0"}

    sites = sorted(set(map_a.keys()) | set(map_b.keys()))
    out_nums: List[int] = []
    out_word: List[str] = []
    phase_pow = 0

    for s in sites:
        la = map_a.get(s, "0")
        lb = map_b.get(s, "0")
        lc, p = _PAULI_TABLE[la][lb]
        phase_pow += p
        if lc != "0":
            out_nums.append(s)
            out_word.append(lc)

    return tuple(out_nums), "".join(out_word), (1j ** phase_pow)


# -----------------------------------------------------------------------------
# ADAA sparse extraction + caches
# -----------------------------------------------------------------------------


def _extract_sparse_coeffs(adaa, eps: float = 1e-14) -> List[Tuple[int, complex]]:
    """Extract nonzero coefficients as (offset, complex_coeff).

    Supports Phoenix RealArrayADAA and ComplexArrayADAA.
    """
    dtypes = list(type(adaa)._DATATYPES.keys())

    if dtypes == ["real"]:
        arr = adaa.data["real"]
        if isinstance(arr, np.ndarray):
            idx = np.flatnonzero(np.abs(arr) > eps)
            return [(int(i), float(arr[i])) for i in idx]
        out: List[Tuple[int, complex]] = []
        for i in range(adaa.size):
            v = float(arr[i])
            if abs(v) > eps:
                out.append((i, v))
        return out

    if dtypes == ["real", "imag"]:
        rr = adaa.data["real"]
        ii = adaa.data["imag"]
        if isinstance(rr, np.ndarray) and isinstance(ii, np.ndarray):
            mask = (np.abs(rr) > eps) | (np.abs(ii) > eps)
            idx = np.flatnonzero(mask)
            return [(int(i), complex(float(rr[i]), float(ii[i]))) for i in idx]
        out = []
        for i in range(adaa.size):
            v = complex(float(rr[i]), float(ii[i]))
            if abs(v) > eps:
                out.append((i, v))
        return out

    raise TypeError(f"Unsupported ADAA datatypes: {dtypes}")


@dataclass
class CovarCaches:
    """Caches to amortize KeyMap decoding and σ0 expectation calls."""
    decode: Dict[int, Tuple[Tuple[int, ...], str]]                 # offset -> (nums, word)
    expect: Dict[Tuple[Tuple[int, ...], str], float]               # (nums, word) -> <P>_σ0

    @classmethod
    def empty(cls) -> "CovarCaches":
        return cls(decode={}, expect={})


def covar_inner_product(
    a,
    b,
    sigma0,
    *,
    eps: float = 1e-14,
    caches: Optional[CovarCaches] = None,
) -> float:
    """Compute (a,b)_covar(σ0) = Tr(sigma0 a.dagger() b)
    or Re Tr (sigma0 a * b) in the case of RealADAA Types of operators"""
    
    km_a = getattr(type(a), "_KEYMAP", None)
    km_b = getattr(type(b), "_KEYMAP", None)
    if km_a is None or km_b is None:
        raise ValueError("ADAA types must have a bound _KEYMAP")

    if caches is None:
        caches = CovarCaches.empty()

    a_nz = _extract_sparse_coeffs(a, eps=eps)
    b_nz = _extract_sparse_coeffs(b, eps=eps)
    
    a_terms: List[Tuple[Tuple[int, ...], str, complex]] = []
    for off, coeff in a_nz:
        term = caches.decode.get(off)
        if term is None:
            nums, word = km_a.off2key(off).labels
            term = (nums, word)
            caches.decode[off] = term
        nums, word = term
        a_terms.append( (nums, word, coeff) )
    
    b_terms: List[Tuple[Tuple[int, ...], str, complex]] = []
    for off, coeff in b_nz:
        term = caches.decode.get(off)
        if term is None:
            nums, word = km_b.off2key(off).labels
            term = (nums, word)
            caches.decode[off] = term
        nums, word = term
        b_terms.append( (nums, word, coeff) )
    
    expect_reduced = getattr(sigma0, "expect_reduced", None)
    if expect_reduced is None:
        raise TypeError("sigma0 must provide expect_reduced(nums, word)")
    
    #### Note to self: phase can only be pm 1 or pm 1j, so we can track it ç
    #### mod4. To be implemented later
    
    acc = .0 + .0j
    for nums_a, word_a, ca in a_terms:
        for nums_b, word_b, cb in b_terms:
            
            nums_c, word_c, overall_phase = mul_reduced(
                nums_a, word_a,
                nums_b, word_b
            )
            
            key = (nums_c, word_c)
            exp = caches.expect.get(key)
            if exp is None:
                exp = float(expect_reduced(nums_c, word_c))
                caches.expect[key] = exp
            if abs(exp) > 1e-14:
                acc += ca * cb * overall_phase * exp
            #print("DEBUG acc =", acc)

    return float(np.real(acc))

def fetch_covar_scalar_product(
    sigma0,
    *,
    eps: float = 1e-14,
    caches: Optional[CovarCaches] = None,
) -> Callable[[object, object], float]:
    """Return a callable scalar product with σ0 bound.

        sp = fetch_covar_scalar_product(sigma0)
        val = sp(a, b)

    The returned callable closes over caches for fast repeated evaluations.
    """
    if caches is None:
        caches = CovarCaches.empty()

    def sp(a, b) -> float:
        return covar_inner_product(a, b, sigma0, eps=eps, caches=caches)

    return sp


def gram_matrix(
    basis: List,
    sigma0,
    *,
    eps: float = 1e-14,
    caches: Optional[CovarCaches] = None,
    sp: Optional[Callable[[object, object], float]] = None,
    symmetric: bool = True,
) -> np.ndarray:
    
    """Compute Gram matrix gram[i,j] = (b_i, b_j)_cov(σ0)."""
    n = len(basis)
    gram = np.zeros((n, n), dtype=float)

    if sp is None:
        if caches is None:
            caches = CovarCaches.empty()
        sp = fetch_covar_scalar_product(sigma0, eps=eps, caches=caches)

    if symmetric:
        for i in range(n):
            for j in range(i, n):
                v = sp(basis[i], basis[j])
                gram[i, j] = v
                gram[j, i] = v
    else:
        for i in range(n):
            for j in range(n):
                gram[i, j] = sp(basis[i], basis[j])

    return gram
