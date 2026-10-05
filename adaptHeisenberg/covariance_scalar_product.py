"""phoenix.adaptHeisenberg.covariance_scalar_product

Covariance scalar product utilities for Phoenix ADAA operator objects.

(A, B)_cov(σ0) := Re Tr(σ0 A^† B)

σ0 is a product state (see sigma0.ProductState).
Operators A,B are ADAAs over the Phoenix hierarchical system KeyMap:

    Key labels = (nums_tuple, reduced_word)
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Callable, Dict, List, Optional, Sequence, Tuple

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

def mul_reduced_fast(
    nums_a: Tuple[int, ...],
    word_a: str,
    nums_b: Tuple[int, ...],
    word_b: str,
) -> Tuple[Tuple[int, ...], str, int]:
    """Return P_a P_b = i**phase P_c in reduced Pauli representation."""

    if len(nums_a) != len(word_a):
        raise ValueError("nums_a and word_a length mismatch")
    if len(nums_b) != len(word_b):
        raise ValueError("nums_b and word_b length mismatch")

    word_a = word_a.lower()
    word_b = word_b.lower()

    nums_c = []
    word_c = []
    phase = 0

    ia = 0
    ib = 0

    while ia < len(nums_a) or ib < len(nums_b):
        if ib >= len(nums_b) or (
            ia < len(nums_a) and nums_a[ia] < nums_b[ib]
        ):
            site = int(nums_a[ia])
            letter = word_a[ia]

            if letter != "0":
                nums_c.append(site)
                word_c.append(letter)

            ia += 1
            continue

        if ia >= len(nums_a) or nums_b[ib] < nums_a[ia]:
            site = int(nums_b[ib])
            letter = word_b[ib]

            if letter != "0":
                nums_c.append(site)
                word_c.append(letter)

            ib += 1
            continue

        site = int(nums_a[ia])
        letter_a = word_a[ia]
        letter_b = word_b[ib]

        try:
            letter_c, local_phase = _PAULI_TABLE[letter_a][letter_b]
        except KeyError as exc:
            raise ValueError(
                f"Invalid Pauli product at site {site}: "
                f"{letter_a!r} * {letter_b!r}"
            ) from exc

        phase = (phase + local_phase) % 4

        if letter_c != "0":
            nums_c.append(site)
            word_c.append(letter_c)

        ia += 1
        ib += 1

    return tuple(nums_c), "".join(word_c), phase

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
    expect: Dict[Tuple[Tuple[int, ...], str], float]            # (nums, word) -> <P>_σ0

    @classmethod
    def empty(cls) -> "CovarCaches":
        return cls(decode={}, expect={})

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
    eval_basis = basis

    if sp is None:
        if caches is None:
            caches = CovarCaches.empty()
        # A Gram build reads each vector many times.  Freeze the current
        # coefficients once; mutable ADAAs are still extracted afresh by sp().
        eval_basis = freeze_covar_basis(basis, eps=eps, caches=caches)
        sp = fetch_covar_scalar_product(sigma0, eps=eps, caches=caches)

    if symmetric:
        for i in range(n):
            for j in range(i, n):
                v = sp(eval_basis[i], eval_basis[j])
                gram[i, j] = v
                gram[j, i] = v
    else:
        for i in range(n):
            for j in range(n):
                gram[i, j] = sp(eval_basis[i], eval_basis[j])

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
    
def extract_reduced_terms_and_masks(
    adaa,
    keymap,
    *,
    eps: float,
    decode_cache=None,
) -> tuple[list[ReducedTerm], list[MaskTuple]]:
    """
    Extract nonzero real ADAA terms and aligned Pauli masks.

    This is intentionally real-only. Complex ADAAs must not enter this fast path.
    """
    _assert_real_adaa(adaa)

    arr = adaa.data["real"]
    nz = np.flatnonzero(np.abs(arr) > eps)

    terms: list[ReducedTerm] = []
    masks: list[MaskTuple] = []

    for off in nz:
        off_i = int(off)
        cache_key = (id(keymap), off_i)

        if decode_cache is not None:
            cached = decode_cache.get(cache_key)
        else:
            cached = None

        if cached is None:
            nums, word = keymap.off2key(off_i).labels
            nums = tuple(int(x) for x in nums)
            w = str(word).lower()
            if decode_cache is not None:
                decode_cache[cache_key] = (nums, w)
        else:
            nums, w = cached

        c = float(arr[off_i])

        mx = my = mz = 0
        for s, ch in zip(nums, w):
            bit = 1 << int(s)
            if ch == "x":
                mx |= bit
            elif ch == "y":
                my |= bit
            elif ch == "z":
                mz |= bit
            elif ch == "0":
                pass
            else:
                raise ValueError(f"Invalid reduced Pauli letter {ch!r}")

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
    sigma0 case: only Z one-point functions are nonzero.

    We may reject only pairs whose product A*B necessarily contains X/Y.
    Important: X/Y or Y/X overlaps are NOT forbidden; they produce ±i Z.
    An even number of such overlaps gives a real nonzero contribution.
    """
    ax, ay, az, anon, axy = a_mask
    bx, by, bz, bnon, bxy = b_mask

    # exactly one side has X/Y, other side identity -> product has X/Y
    if (axy & ~bnon) != 0:
        return False
    if (bxy & ~anon) != 0:
        return False

    # Z times X/Y -> X/Y
    if ((az & bxy) | (bz & axy)) != 0:
        return False

    # X/X, Y/Y -> I; X/Y, Y/X -> ±iZ; Z/Z -> I; Z/I or I/Z -> Z
    return True


def _mask_prod_muz(mask: int, muz: np.ndarray, cache: dict[int, float]) -> float:
    """
    Product of muz[s] over all bits set in mask.
    Cached by integer mask.
    """
    val = cache.get(mask)
    if val is not None:
        return val

    prod = 1.0
    m = int(mask)
    while m:
        lsb = m & -m
        site = lsb.bit_length() - 1
        prod *= float(muz[site])
        m ^= lsb

    cache[mask] = prod
    return prod


_MASK64 = (1 << 64) - 1
_MASK16_U64 = np.uint64((1 << 16) - 1)
_POPCOUNT16 = np.fromiter(
    (i.bit_count() for i in range(1 << 16)),
    dtype=np.uint8,
    count=1 << 16,
)


@dataclass(frozen=True)
class _PackedRealCovarOp:
    coeff: np.ndarray
    mx: np.ndarray
    my: np.ndarray
    mz: np.ndarray
    mnon: np.ndarray


def _pack_real_covar_terms(
    terms: Sequence[ReducedTerm],
    masks: Sequence[MaskTuple],
    nmask_blocks: int,
) -> _PackedRealCovarOp:
    """Pack arbitrary-size Python masks into 64-bit blocks for NumPy kernels."""
    nterms = len(terms)
    coeff = np.fromiter((t[2] for t in terms), dtype=np.float64, count=nterms)
    mx = np.empty((nterms, nmask_blocks), dtype=np.uint64)
    my = np.empty_like(mx)
    mz = np.empty_like(mx)
    mnon = np.empty_like(mx)

    for block in range(nmask_blocks):
        shift = 64 * block
        mx[:, block] = np.fromiter(
            ((m[0] >> shift) & _MASK64 for m in masks),
            dtype=np.uint64,
            count=nterms,
        )
        my[:, block] = np.fromiter(
            ((m[1] >> shift) & _MASK64 for m in masks),
            dtype=np.uint64,
            count=nterms,
        )
        mz[:, block] = np.fromiter(
            ((m[2] >> shift) & _MASK64 for m in masks),
            dtype=np.uint64,
            count=nterms,
        )
        mnon[:, block] = mx[:, block] | my[:, block] | mz[:, block]

    return _PackedRealCovarOp(coeff, mx, my, mz, mnon)


def _popcount_u64(values: np.ndarray) -> np.ndarray:
    """Vectorized population count, including NumPy versions without bit_count."""
    return (
        _POPCOUNT16[(values & _MASK16_U64).astype(np.uint16)]
        + _POPCOUNT16[((values >> np.uint64(16)) & _MASK16_U64).astype(np.uint16)]
        + _POPCOUNT16[((values >> np.uint64(32)) & _MASK16_U64).astype(np.uint16)]
        + _POPCOUNT16[(values >> np.uint64(48)).astype(np.uint16)]
    )


def _build_xz_product_tables(
    mux: np.ndarray,
    muz: np.ndarray,
) -> tuple[np.ndarray, np.ndarray]:
    """Products of local X/Z one-point functions for every 16-site mask."""
    nsites = len(mux)
    nchunks = max(1, (nsites + 15) // 16)
    indices = np.arange(1 << 16, dtype=np.uint16)
    prod_x = np.ones((nchunks, 1 << 16), dtype=np.float64)
    prod_z = np.ones_like(prod_x)

    for chunk in range(nchunks):
        site0 = 16 * chunk
        for local_site in range(16):
            site = site0 + local_site
            if site >= nsites:
                break
            selected = (indices & np.uint16(1 << local_site)) != 0
            prod_x[chunk, selected] *= float(mux[site])
            prod_z[chunk, selected] *= float(muz[site])

    return prod_x, prod_z


def _fast_xz_inner_product_packed(
    a: _PackedRealCovarOp,
    b: _PackedRealCovarOp,
    prod_x: np.ndarray,
    prod_z: np.ndarray,
    allowed_x: np.ndarray,
    allowed_z: np.ndarray,
    *,
    eps: float,
    pair_block_elements: int = 1 << 18,
    b_block_size: int = 4096,
) -> float:
    """Bit-mask contraction for product states with zero Y magnetization.

    Work is blocked so the temporary pair arrays remain small.  The Pauli
    products themselves, the phase, and the product-state expectation are all
    evaluated by NumPy kernels; no reduced words are rebuilt in the pair loop.
    """
    na = a.coeff.size
    nb = b.coeff.size
    if na == 0 or nb == 0:
        return 0.0

    nmask_blocks = a.mx.shape[1]
    if b.mx.shape[1] != nmask_blocks:
        raise ValueError("Packed covariance masks have incompatible widths")

    b_step = min(nb, max(1, int(b_block_size)))
    a_step = min(na, max(1, int(pair_block_elements) // b_step))
    acc = 0.0

    for a0 in range(0, na, a_step):
        a1 = min(na, a0 + a_step)
        ca = a.coeff[a0:a1]

        for b0 in range(0, nb, b_step):
            b1 = min(nb, b0 + b_step)
            cb = b.coeff[b0:b1]
            shape = (a1 - a0, b1 - b0)

            valid = np.ones(shape, dtype=bool)
            phase = np.zeros(shape, dtype=np.uint8)
            expectation = np.ones(shape, dtype=np.float64)

            for block in range(nmask_blocks):
                ax = a.mx[a0:a1, block, None]
                ay = a.my[a0:a1, block, None]
                az = a.mz[a0:a1, block, None]
                an = a.mnon[a0:a1, block, None]

                bx = b.mx[None, b0:b1, block]
                by = b.my[None, b0:b1, block]
                bz = b.mz[None, b0:b1, block]
                bn = b.mnon[None, b0:b1, block]

                # Resulting Y sites: Y/I, I/Y, X/Z, or Z/X.
                result_y = (
                    (ay & ~bn)
                    | (by & ~an)
                    | (ax & bz)
                    | (az & bx)
                )
                valid &= result_y == 0

                positive_phase = (ax & by) | (ay & bz) | (az & bx)
                negative_phase = (ay & bx) | (az & by) | (ax & bz)
                phase = (
                    phase.astype(np.int16)
                    + _popcount_u64(positive_phase).astype(np.int16)
                    - _popcount_u64(negative_phase).astype(np.int16)
                ).astype(np.uint8) & np.uint8(3)

                result_x = (
                    (ax & ~bn)
                    | (bx & ~an)
                    | (ay & bz)
                    | (az & by)
                )
                result_z = (
                    (az & ~bn)
                    | (bz & ~an)
                    | (ax & by)
                    | (ay & bx)
                )

                # This also gives the all-Z and all-X endpoint prefilters.
                valid &= (result_x & ~allowed_x[block]) == 0
                valid &= (result_z & ~allowed_z[block]) == 0

                for subblock in range(4):
                    chunk = 4 * block + subblock
                    if chunk >= prod_x.shape[0]:
                        break
                    shift = np.uint64(16 * subblock)
                    x_index = ((result_x >> shift) & _MASK16_U64).astype(np.uint16)
                    z_index = ((result_z >> shift) & _MASK16_U64).astype(np.uint16)
                    expectation *= prod_x[chunk, x_index]
                    expectation *= prod_z[chunk, z_index]

            valid &= (phase & np.uint8(1)) == 0
            if eps > 0.0:
                valid &= np.abs(expectation) > eps
            expectation[~valid] = 0.0
            expectation[phase == 2] *= -1.0

            # Avoid materializing the coefficient outer product.
            acc += float(ca @ (expectation @ cb))

    return float(acc)

def _assert_real_adaa(op) -> None:
    dtypes = list(type(op)._DATATYPES.keys())
    if dtypes != ["real"]:
        raise TypeError(
            "Fast covariance scalar product supports only real-coefficient ADAAs. "
            "This is correct for Hermitian Pauli expansions generated by -i[H,O]. "
            "Use a separate complex-safe scalar product for complex ADAAs."
        )
        
########################################

MaskTuple = Tuple[int, int, int, int, int]
ReducedTerm = Tuple[Tuple[int, ...], str, float]


def _fast_allz_inner_product_terms(
    a_terms: list[ReducedTerm],
    b_terms: list[ReducedTerm],
    a_masks: list[MaskTuple],
    b_masks: list[MaskTuple],
    muz: np.ndarray,
    *,
    eps: float,
    prod_cache: dict[int, float],
) -> float:
    """
    Fast covariance scalar product for product states with only Z magnetization.

    Correctly preserves:
        X_i Y_i -> +i Z_i
        Y_i X_i -> -i Z_i

    For real ADAA coefficients, an odd total imaginary phase gives zero after Re.
    """
    acc = 0.0

    for (_, _, ca), ma in zip(a_terms, a_masks):
        ax, ay, az, anon, axy = ma

        for (_, _, cb), mb in zip(b_terms, b_masks):
            bx, by, bz, bnon, bxy = mb

            # Reject only products that necessarily contain residual X/Y.
            # Do not reject X/Y overlaps: they become ±i Z.
            if not _passes_allz_prefilter(ma, mb):
                continue

            # X*Y = +i Z, Y*X = -i Z.
            n_xy = (ax & by).bit_count()
            n_yx = (ay & bx).bit_count()
            phase_mod4 = (n_xy - n_yx) & 3

            # Real coefficients: ±i contributions vanish under Re.
            if phase_mod4 == 1 or phase_mod4 == 3:
                continue

            sign = 1.0 if phase_mod4 == 0 else -1.0

            # Product has Z on:
            #   Z/I or I/Z     -> Z
            #   X/Y or Y/X     -> ±iZ
            # Product has I on:
            #   X/X, Y/Y, Z/Z.
            zmask = (az ^ bz) | (ax & by) | (ay & bx)

            exp = _mask_prod_muz(zmask, muz, prod_cache)
            if abs(exp) > eps:
                acc += ca * cb * sign * exp

    return float(acc)

from dataclasses import dataclass
from typing import Tuple


@dataclass(frozen=True)
class FrozenCovarOp:
    """
    Immutable disassembled covariance representation.

    Use this for finalized basis vectors.
    Never use mutable ADAAs as cache keys.
    """
    terms: Tuple[ReducedTerm, ...]
    masks: Tuple[MaskTuple, ...]


def freeze_covar_op(
    op,
    *,
    eps: float = 1e-14,
    caches: Optional[CovarCaches] = None,
) -> FrozenCovarOp:
    if caches is None:
        caches = CovarCaches.empty()

    km = type(op)._KEYMAP
    if km is None:
        raise ValueError("ADAA type has no bound _KEYMAP")

    terms, masks = extract_reduced_terms_and_masks(
        op,
        km,
        eps=eps,
        decode_cache=caches.decode,
    )

    return FrozenCovarOp(tuple(terms), tuple(masks))

def freeze_covar_basis(
    basis,
    *,
    eps: float = 1e-14,
    caches: Optional[CovarCaches] = None,
):
    if caches is None:
        caches = CovarCaches.empty()

    return [freeze_covar_op(b, eps=eps, caches=caches) for b in basis]

def _generic_real_covar_inner_product_terms(
    a_terms: list[ReducedTerm],
    b_terms: list[ReducedTerm],
    a_masks: list[MaskTuple],
    b_masks: list[MaskTuple],
    sigma0,
    *,
    eps: float,
    caches: CovarCaches,
) -> float:
    """
    Generic real-coefficient covariance scalar product.

    Uses reduced Pauli multiplication and sigma0.expect_reduced.
    Correct for arbitrary product-state Bloch vectors, as long as ADAA
    coefficients are real.
    """
    expect_reduced = sigma0.expect_reduced
    acc = 0.0

    for (nums_a, word_a, ca), _ma in zip(a_terms, a_masks):
        for (nums_b, word_b, cb), _mb in zip(b_terms, b_masks):
            nums_c, word_c, ph = mul_reduced_fast(nums_a, word_a, nums_b, word_b)

            # Real coefficients: odd Pauli phase gives imaginary expectation contribution.
            if ph == 1 or ph == 3:
                continue

            sign = 1.0 if ph == 0 else -1.0

            key = (nums_c, word_c)
            exp = caches.expect.get(key)
            if exp is None:
                exp = float(expect_reduced(nums_c, word_c))
                caches.expect[key] = exp

            if abs(exp) > eps:
                acc += ca * cb * sign * exp

    return float(acc)


def fetch_covar_scalar_product(
    sigma0,
    eps: float = 0.0,
    caches: Optional[CovarCaches] = None,
    term_cache=None,              # kept for API compatibility; intentionally unused
    cache_terms: bool = False,    # kept for API compatibility; intentionally ignored
):
    """
    Return sp(a,b) = Re Tr(sigma0 a^† b) for real-coefficient Hermitian ADAAs.

    Zero-error policy:
    - mutable ADAAs are extracted fresh every call;
    - finalized basis vectors should be passed as FrozenCovarOp;
    - only immutable FrozenCovarOp mask packs are cached by identity.
    """
    if caches is None:
        caches = CovarCaches.empty()

    vec = np.asarray(sigma0.vectors, dtype=float)
    N = vec.shape[0]
    eps0 = 1e-15

    allowed_bits = np.zeros(N, dtype=np.uint8)
    for s in range(N):
        mu_x, mu_y, mu_z = vec[s, 0], vec[s, 1], vec[s, 2]
        if abs(mu_x) > eps0:
            allowed_bits[s] |= 1
        if abs(mu_y) > eps0:
            allowed_bits[s] |= 2
        if abs(mu_z) > eps0:
            allowed_bits[s] |= 4

    # State families with mu_y=0 admit a direct X/Z mask contraction.
    is_xz_only = bool(np.all((allowed_bits & 0b010) == 0))

    nmask_blocks = max(1, (N + 63) // 64)
    if is_xz_only:
        prod_x, prod_z = _build_xz_product_tables(vec[:, 0], vec[:, 2])
        allowed_x = np.zeros(nmask_blocks, dtype=np.uint64)
        allowed_z = np.zeros(nmask_blocks, dtype=np.uint64)
        for site in range(N):
            block, offset = divmod(site, 64)
            bit = np.uint64(1) << np.uint64(offset)
            if abs(vec[site, 0]) > eps0:
                allowed_x[block] |= bit
            if abs(vec[site, 2]) > eps0:
                allowed_z[block] |= bit
    else:
        prod_x = prod_z = None
        allowed_x = allowed_z = None

    # Frozen vectors may be packed once for the lifetime of this scalar product.
    # Keep a strong reference beside every id so object-id reuse cannot alias it.
    packed_frozen = {}

    def get_terms_and_masks(op):
        if isinstance(op, FrozenCovarOp):
            return op.terms, op.masks

        km = type(op)._KEYMAP
        if km is None:
            raise ValueError("ADAA type has no bound _KEYMAP")

        return extract_reduced_terms_and_masks(
            op,
            km,
            eps=eps,
            decode_cache=caches.decode,
        )

    def get_packed(op, terms, masks):
        if not isinstance(op, FrozenCovarOp):
            return _pack_real_covar_terms(terms, masks, nmask_blocks)

        cache_key = id(op)
        cached = packed_frozen.get(cache_key)
        if cached is not None and cached[0] is op:
            return cached[1]

        packed = _pack_real_covar_terms(terms, masks, nmask_blocks)
        packed_frozen[cache_key] = (op, packed)
        return packed

    def sp(a, b) -> float:
        a_terms, a_masks = get_terms_and_masks(a)
        b_terms, b_masks = get_terms_and_masks(b)

        if is_xz_only:
            return _fast_xz_inner_product_packed(
                get_packed(a, a_terms, a_masks),
                get_packed(b, b_terms, b_masks),
                prod_x,
                prod_z,
                allowed_x,
                allowed_z,
                eps=eps,
            )

        return _generic_real_covar_inner_product_terms(
            a_terms,
            b_terms,
            a_masks,
            b_masks,
            sigma0,
            eps=eps,
            caches=caches,
        )

    return sp


###

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
###
