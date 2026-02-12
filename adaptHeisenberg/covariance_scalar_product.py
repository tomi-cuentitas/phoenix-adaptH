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


def __mul_reduced(
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

# Keep your existing table, but normalize access (lowercase).
# _PAULI_TABLE[a][b] -> (phase, out_axis) where out_axis in {"i","x","y","z"}
# phase is ±1 for your real-convention multiplication
# (If your table encodes "i" explicitly as a symbol, we handle it.)

def mul_reduced_fast(nums_a, word_a, nums_b, word_b):
    """
    Fast multiplication of two reduced Pauli terms with sorted supports.

    Inputs:
      nums_a, word_a: reduced representation (no 'I' sites), identity letter is '0' if present
      nums_b, word_b: same

    Uses _PAULI_TABLE with entries like:
      _PAULI_TABLE[p][q] = (out_axis, phase_code)
    where phase_code is:
      0 -> * 1
      1 -> * (+i)
      3 -> * (-i)

    Returns:
      nums_out: tuple[int,...] sorted
      word_out: str over {'x','y','z'} (no '0')
      phase_mod4: int in {0,1,2,3} representing factor i**phase_mod4
    """
    wa = str(word_a).lower()
    wb = str(word_b).lower()

    ia = ib = 0
    na = len(nums_a)
    nb = len(nums_b)

    phase = 0  # mod 4 exponent of i
    out_nums = []
    out_word = []

    while ia < na and ib < nb:
        sa = nums_a[ia]
        sb = nums_b[ib]

        if sa < sb:
            ax = wa[ia]
            if ax != "0":
                out_nums.append(sa)
                out_word.append(ax)
            ia += 1

        elif sb < sa:
            bx = wb[ib]
            if bx != "0":
                out_nums.append(sb)
                out_word.append(bx)
            ib += 1

        else:
            pa = wa[ia]
            pb = wb[ib]

            # multiply using table (handles '0' as identity too)
            out_axis, ph_code = _PAULI_TABLE[pa][pb]
            phase = (phase + int(ph_code)) % 4

            if out_axis != "0":
                out_nums.append(sa)
                out_word.append(out_axis)

            ia += 1
            ib += 1

    # append remainders
    while ia < na:
        ax = wa[ia]
        if ax != "0":
            out_nums.append(nums_a[ia])
            out_word.append(ax)
        ia += 1

    while ib < nb:
        bx = wb[ib]
        if bx != "0":
            out_nums.append(nums_b[ib])
            out_word.append(bx)
        ib += 1

    return tuple(out_nums), "".join(out_word), phase

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
    decode: Dict[tuple[int, int], Tuple[Tuple[int, ...], str]]  # (id(km), offset) -> …
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
        kid = id(km_a)
        key = (kid, off)

        term = caches.decode.get(key)
        if term is None:
            nums, word = km_a.off2key(off).labels
            term = (tuple(int(x) for x in nums), str(word).lower())
            caches.decode[key] = term

        nums, word = term
        a_terms.append( (nums, word, coeff) )
    
    b_terms: List[Tuple[Tuple[int, ...], str, complex]] = []
    for off, coeff in b_nz:
        kid = id(km_b)
        key = (kid, off)

        term = caches.decode.get(key)
        if term is None:
            nums, word = km_b.off2key(off).labels
            term = (tuple(int(x) for x in nums), str(word).lower())
            caches.decode[key] = term       
        
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
            
            nums_c, word_c, ph = mul_reduced_fast(nums_a, word_a, nums_b, word_b)

            # In covariance / Re Tr(σ A B), only real phases contribute:
            # i^0 = +1  (real)
            # i^1 = +i  (imag)
            # i^2 = -1  (real)
            # i^3 = -i  (imag)
            if ph == 1 or ph == 3:
                continue  # purely imaginary contribution -> zero in Re[...]

            sign = 1.0 if ph == 0 else -1.0  # ph==2 gives -1

            key = (nums_c, word_c)
            exp = caches.expect.get(key)
            if exp is None:
                exp = expect_reduced(nums_c, word_c)
                caches.expect[key] = exp

            if abs(exp) >= 1e-14:
                acc += (ca * cb) * (sign * exp) ### could use float(ca)*float(cb) 
                                                ### but in the case of complex numbers, could
                                                ### blow up.


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
