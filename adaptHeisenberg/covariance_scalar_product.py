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

# Keep my existing table, but normalize access (lowercase).
# _PAULI_TABLE[a][b] -> (phase, out_axis) where out_axis in {"i","x","y","z"}
# phase is ±1 for your real-convention multiplication

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
    wa = word_a; wb = word_b

    ia = ib = 0
    na = len(nums_a); nb = len(nums_b)

    phase = 0  # mod 4 exponent of i
    out_nums = []; out_word = []

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


def _deprecated_covar_inner_product(
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

            acc += (ca * cb) * (sign * exp)     ### could use float(ca)*float(cb) 
                                                ### but in the case of complex 
                                                ### numbers, could
                                                ### blow up.

    return float(np.real(acc))


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

#### ------------------ #### more efficient functions 

from dataclasses import dataclass, field
from typing import Dict, List, Tuple

ReducedTerm = Tuple[Tuple[int, ...], str, float]  # (nums, word, coeff)

@dataclass
class TermListCache:
    # (id(op), id(keymap)) -> list of reduced terms
    terms: Dict[Tuple[int, int], List[ReducedTerm]] = field(default_factory=dict)

    # (id(op), id(keymap)) -> aligned list of bitmasks (same length as terms)
    # each entry: (mask_x, mask_y, mask_z, mask_nonid, mask_xy)
    masks: Dict[Tuple[int, int], List[Tuple[int, int, int, int, int]]] = field(default_factory=dict)

    
def extract_reduced_terms(adaa, keymap, *, eps: float = 1e-14) -> List[ReducedTerm]:
    # Single pass over dense array (still O(size)), but only once per operator
    arr = adaa.data["real"]
    nz = np.flatnonzero(np.abs(arr) > eps)

    out: List[ReducedTerm] = []
    for off in nz:
        nums, word = keymap.off2key(int(off)).labels
        out.append((tuple(int(x) for x in nums), str(word).lower(), float(arr[int(off)])))
    return out


def extract_reduced_terms_and_masks(adaa, keymap, *, eps: float) -> tuple[
    list[ReducedTerm],
    list[tuple[int, int, int, int, int]],
]:
    """
    Returns:
      terms: [(nums, word, coeff), ...] with word lowercase
      masks: aligned list of bitmasks (x,y,z,nonid,xy)
            masks are Python ints with bit s set if site s is in that category.
    """
    arr = adaa.data["real"]
    nz = np.flatnonzero(np.abs(arr) > eps)

    terms: list[ReducedTerm] = []
    masks: list[tuple[int, int, int, int, int]] = []

    for off in nz:
        nums, word = keymap.off2key(int(off)).labels
        nums = tuple(int(x) for x in nums)
        w = str(word).lower()
        c = float(arr[int(off)])

        mx = my = mz = 0
        for s, ch in zip(nums, w):
            bit = 1 << int(s)
            if ch == "x":
                mx |= bit
            elif ch == "y":
                my |= bit
            elif ch == "z":
                mz |= bit
            else:
                # reduced words should not contain identity; ignore if they do
                pass

        mxy = mx | my
        mnon = mxy | mz

        terms.append((nums, w, c))
        masks.append((mx, my, mz, mnon, mxy))

    return terms, masks

def _passes_allz_prefilter(
    a_mask: tuple[int, int, int, int, int],
    b_mask: tuple[int, int, int, int, int],
) -> bool:
    """
    sigma0 case: allowed axis is only Z everywhere (i.e. mu_x=mu_y=0 on all sites).

    Product C = A*B has nonzero expectation only if C contains no X/Y anywhere.
    For Pauli multiplication, that is violated iff there exists a site where
      - exactly one operator has X/Y, or
      - one has Z and the other has X/Y (overlap creates X/Y).
    """
    ax, ay, az, anon, axy = a_mask
    bx, by, bz, bnon, bxy = b_mask

    # sites where a has XY but b is identity -> product has XY
    if (axy & ~bnon) != 0:
        return False

    # sites where b has XY but a is identity -> product has XY
    if (bxy & ~anon) != 0:
        return False

    # overlap sites: Z with XY -> product becomes XY (bad)
    if ((az & bxy) | (bz & axy)) != 0:
        return False

    # otherwise product can be Z-only or identity-only
    return True


def _fast_covar_inner_product_terms(
    a_terms: list[ReducedTerm],
    b_terms: list[ReducedTerm],
    a_masks: list[tuple[int, int, int, int, int]],
    b_masks: list[tuple[int, int, int, int, int]],
    sigma0,
    *,
    eps: float,
    caches,
    is_allz_only: bool,
) -> float:
    expect_reduced = sigma0.expect_reduced
    acc = 0.0

    # NOTE: words in a_terms/b_terms are already lowercase from extraction
    for (nums_a, word_a, ca), ma in zip(a_terms, a_masks):
        for (nums_b, word_b, cb), mb in zip(b_terms, b_masks):

            # O(1) early rejection for the (very common) "sigma0 allows only Z" regime
            if is_allz_only and (not _passes_allz_prefilter(ma, mb)):
                continue

            nums_c, word_c, ph = mul_reduced_fast(nums_a, word_a, nums_b, word_b)

            # drop imaginary phases in Re Tr(σ A B)
            if ph == 1 or ph == 3:
                continue
            sign = 1.0 if ph == 0 else -1.0  # ph==2

            key = (nums_c, word_c)
            exp = caches.expect.get(key)
            if exp is None:
                exp = expect_reduced(nums_c, word_c)
                caches.expect[key] = exp

            if abs(exp) > eps:
                acc += ca * cb * sign * exp

    return float(acc)


def fetch_covar_scalar_product(sigma0, eps=0.0, caches=None, term_cache=None):
    """Return a callable scalar product with σ0 bound.

        sp = fetch_covar_scalar_product(sigma0)
        val = sp(a, b)

    The returned callable closes over caches for fast repeated evaluations.
    If the target operators, a, b, have already been dissambled and their
    terms and coefficients are known, then, a fast implementation is availeable
    that takes these as input. 
    """
    if caches is None:
        caches = CovarCaches(decode={}, expect={})
    if term_cache is None:
        term_cache = TermListCache()
        
    # for each site: allowed bits for x,y,z
    # bit 0->x, 1->y, 2->z
    
    vec = np.asarray(sigma0.vectors, dtype=float)
    N = vec.shape[0]

    # eps for deciding whether a mean is effectively nonzero (keep tiny for safety)
    eps0 = 1e-15

    allowed_bits = np.zeros(N, dtype=np.uint8)
    for s in range(N):
        mu_x, mu_y, mu_z = vec[s, 0], vec[s, 1], vec[s, 2]
        if abs(mu_x) > eps0:
            allowed_bits[s] |= 1  # x
        if abs(mu_y) > eps0:
            allowed_bits[s] |= 2  # y
        if abs(mu_z) > eps0:
            allowed_bits[s] |= 4  # z

    # Fast special-case: only Z is allowed everywhere
    is_allz_only = bool(np.all(allowed_bits == 4))

    def get_terms_and_masks(op):
        km = type(op)._KEYMAP
        key = (id(op), id(km))

        t = term_cache.terms.get(key)
        m = term_cache.masks.get(key)

        if t is None or m is None:
            t, m = extract_reduced_terms_and_masks(op, km, eps=eps)
            term_cache.terms[key] = t
            term_cache.masks[key] = m

        return t, m


    def sp(a, b) -> float:
        a_terms, a_masks = get_terms_and_masks(a)
        b_terms, b_masks = get_terms_and_masks(b)
        return _fast_covar_inner_product_terms(
            a_terms, b_terms, a_masks, b_masks,
            sigma0,
            eps=eps,
            caches=caches,
            is_allz_only=is_allz_only,
        )


    return sp