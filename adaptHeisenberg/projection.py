"""phoenix.adaptHeisenberg.projection

Phoenix/Fortran integration-oriented projection utilities.

Key requirements addressed:
- Works with the *hierarchical* system KeyMap used by test_fortran_builder_comm_3
  where coefficients are keyed as (nums_tuple, reduced_pauli_word).
- Does NOT create new KeyMaps / ADAA types. Projection writes into an existing
  (fixed-size) ADAA so that compiled Fortran routines can consume its output.
- Uses the same Pauli alphabet as the commutator demo: identity '0' and letters
  'x','y','z' (also accepts 'I','X','Y','Z' for convenience).

Design notes:
- Projection is linear: dst = π_m^{σ0}(src). 
    For commutator iteration, you typically:
        tmp_big = commutate(H, b)
        b_next  = project(tmp_big)
  where tmp_big and b_next share the same ADAA type bound to a fixed KeyMap.

- This implementation excludes the r=0 term (full drop to scalar) by default,
  consistent with your intended basis construction.

"""

from __future__ import annotations
from dataclasses import dataclass, field

import itertools
from typing import Dict, Iterable, Tuple, Union, Optional

import numpy as np

# LEGACY cache container retained for compatibility/debugging only.
#
# IMPORTANT: state-adapted projection coefficients depend on the numerical
# contents of sigma0.vectors (and on eps), so caching by id(sigma0) is unsafe:
# Python may reuse object ids after a state is destroyed, and ProductState
# instances from older workflows may also have been mutable.  The production
# projection path below therefore uses a fresh per-call cache instead.
_PROJECTION_TERM_CACHE_BY_SIGMA0_ID: Dict[
    int,
    Dict[
        Tuple[Tuple[int, ...], str, int, bool, float],
        Dict[Tuple[Tuple[int, ...], str], float],
    ],
] = {}


# -----------------------------------------------------------------------------
# Pauli alphabet helpers
# -----------------------------------------------------------------------------

_IDENTITY = {"0", "I"}
_X = {"x", "X"}
_Y = {"y", "Y"}
_Z = {"z", "Z"}


def _axis_index(letter: str) -> Optional[int]:
    """Return axis index for a Pauli letter.

    Returns:
        0 for X/x, 1 for Y/y, 2 for Z/z, None for identity.

    Raises:
        ValueError for unknown letters.
    """
    if letter in _IDENTITY:
        return None
    if letter in _X:
        return 0
    if letter in _Y:
        return 1
    if letter in _Z:
        return 2
    raise ValueError(f"Invalid Pauli letter: {letter!r}")


# -----------------------------------------------------------------------------
# σ0 expectation helpers
# -----------------------------------------------------------------------------


def _LEGACY____expect_reduced_product_state(sigma0, nums: Tuple[int, ...], word: str) -> float:
    """Expectation value ⟨P(nums, word)⟩ for a product state σ0.

    This function is intentionally light on dependencies: it supports two cases:

    1) sigma0 has attribute 'vectors' shaped (N,3), as in your ProductState class.
       Then we compute the factorized expectation directly.

    2) otherwise, we fall back to sigma0.expect(padded_string) if available.

    Args:
        sigma0: product state object.
        nums: tuple of site indices (ascending).
        word: reduced Pauli word, same length as nums.

    Returns:
        float expectation value.
    """
    if len(nums) == 0:
        return 1.0
    if len(word) != len(nums):
        raise ValueError("nums and word length mismatch")

    # Fast path: your ProductState stores Bloch vectors.
    vectors = getattr(sigma0, "vectors", None)
    if vectors is not None:
        # vectors[i] = (x_i, y_i, z_i)
        res = 1.0
        for site, let in zip(nums, word):
            ax = _axis_index(let)
            if ax is None:
                continue
            res *= float(vectors[site, ax])
        return float(res)

    # Fallback: build a padded string and call sigma0.expect if present.
    expect = getattr(sigma0, "expect", None)
    if expect is None:
        raise TypeError("sigma0 must provide either .vectors or .expect(..)")

    N = int(getattr(sigma0, "N"))
    padded = ["I"] * N
    for site, let in zip(nums, word):
        if let in _IDENTITY:
            continue
        if let in _X:
            padded[site] = "X"
        elif let in _Y:
            padded[site] = "Y"
        elif let in _Z:
            padded[site] = "Z"
        else:
            raise ValueError(f"Invalid Pauli letter: {let!r}")
    return float(expect("".join(padded)))


def expect_single_site_product_state(sigma0, site: int, letter: str) -> float:
    """Single-site expectation <Pauli_letter(site)> for a product state."""
    ax = _axis_index(letter)
    if ax is None:
        return 1.0

    vectors = getattr(sigma0, "vectors", None)
    if vectors is not None:
        return float(vectors[site, ax])

    expect = getattr(sigma0, "expect", None)
    if expect is None:
        raise TypeError("sigma0 must provide either .vectors or .expect(..)")
    N = int(getattr(sigma0, "N"))
    padded = ["I"] * N
    padded[site] = "XYZ"[ax]
    return float(expect("".join(padded)))


# -----------------------------------------------------------------------------
# Term-level projection for the hierarchical KeyMap representation
# -----------------------------------------------------------------------------

def _extract_sparse_terms_with_labels(adaa, keymap, eps: float = 1e-14):
    """
    Extract nonzero terms as tuples.

    real-only:
      (src_offset, nums, word, coeff_real)

    real/imag:
      (src_offset, nums, word, coeff_real, coeff_imag)
    """
    data_ids = list(type(adaa)._DATATYPES.keys())
    if not data_ids:
        return []

    if data_ids == ["real"]:
        arr = adaa.data["real"]
        idx = np.flatnonzero(np.abs(arr) > eps)
        out = []
        for off in idx:
            off_i = int(off)
            nums, word = keymap.off2key(off_i).labels
            out.append((
                off_i,
                tuple(int(x) for x in nums),
                str(word),
                float(arr[off_i]),
            ))
        return out

    if data_ids == ["real", "imag"]:
        rr = adaa.data["real"]
        ii = adaa.data["imag"]
        mask = (np.abs(rr) > eps) | (np.abs(ii) > eps)
        idx = np.flatnonzero(mask)
        out = []
        for off in idx:
            off_i = int(off)
            nums, word = keymap.off2key(off_i).labels
            out.append((
                off_i,
                tuple(int(x) for x in nums),
                str(word),
                float(rr[off_i]),
                float(ii[off_i]),
            ))
        return out

    raise TypeError(f"Unsupported ADAA datatypes: {data_ids}")
    
    
def project_term_delta_fast(
    nums: Tuple[int, ...],
    word: str,
    sigma0_vectors: np.ndarray,
    m: int,
    *,
    exclude_scalar: bool = False,
    eps: float = 1e-14,
    cache: Optional[
        Dict[
            Tuple[Tuple[int, ...], str, int, bool, float],
            Dict[Tuple[Tuple[int, ...], str], float],
        ]
    ] = None,
) -> Dict[Tuple[Tuple[int, ...], str], float]:
    """
    Projection of a reduced Pauli term onto the <=m centered subspace.

    Equivalent to the previous combinations+mask implementation, but avoids
    constructing kept-position sets and mask-expanded temporary containers.
    """
    k = len(nums)
    if k != len(word):
        raise ValueError("nums and word length mismatch")

    if k == 0:
        return {} if exclude_scalar else {(tuple(), ""): 1.0}

    # The expansion depends on eps because the DFS prunes small branches.
    # Include it in the key so that changing numerical tolerances cannot reuse
    # an expansion produced under a different pruning threshold.
    cache_key = (nums, word, int(m), bool(exclude_scalar), float(eps))
    if cache is not None:
        cached = cache.get(cache_key)
        if cached is not None:
            return cached

    mu = []
    for site, let in zip(nums, word):
        ax = _axis_index(let)
        if ax is None:
            mu.append(1.0)
        else:
            mu.append(float(sigma0_vectors[site, ax]))
    mu = tuple(mu)

    out: Dict[Tuple[Tuple[int, ...], str], float] = {}

    nums_acc = []
    word_acc = []

    def dfs(pos: int, s_count: int, coeff: float) -> None:
        if abs(coeff) <= eps:
            return

        if pos == k:
            if exclude_scalar and len(nums_acc) == 0:
                return
            key = (tuple(nums_acc), "".join(word_acc))
            out[key] = out.get(key, 0.0) + float(coeff)
            return

        # Branch 1: site not included in S
        dfs(pos + 1, s_count, coeff * mu[pos])

        # Branches 2 and 3: site included in S
        if s_count < m:
            # 2a: keep the Pauli operator itself
            nums_acc.append(nums[pos])
            word_acc.append(word[pos])
            dfs(pos + 1, s_count + 1, coeff)
            nums_acc.pop()
            word_acc.pop()

            # 2b: take the -mu_i * I piece
            dfs(pos + 1, s_count + 1, coeff * (-mu[pos]))

    dfs(0, 0, 1.0)

    if cache is not None:
        cache[cache_key] = out
    return out


# -----------------------------------------------------------------------------
# ADAA-level projection (fixed KeyMap / Fortran-friendly)
# -----------------------------------------------------------------------------


def _parse_system_key_labels(labels: Tuple[object, ...]) -> Tuple[Tuple[int, ...], str]:
    """Parse labels from KeyMap.off2key(i).labels.

    Expected for system_keymap: (nums_tuple, reduced_word)
    Scalar term: (tuple(), "")

    If the keymap is flat (single label), treat that label as a full word and
    assume nums cannot be inferred (unsupported for Phoenix commutator integration).
    """
    if len(labels) == 2:
        nums, word = labels
        # Normalize
        if not isinstance(nums, tuple):
            raise TypeError(f"Expected nums tuple, got: {type(nums)}")
        if not isinstance(word, str):
            raise TypeError(f"Expected word str, got: {type(word)}")
        return nums, word

    raise ValueError(
        "Projection expects a 2-level system KeyMap key: (nums_tuple, reduced_word)."
    )

@dataclass
class ProjectionTermCache:
    expansions: Dict[
        Tuple[Tuple[int, ...], str, int, bool, float],
        Dict[Tuple[Tuple[int, ...], str], float],
    ] = field(default_factory=dict)

def _get_projection_cache_for_sigma0(sigma0):
    """Return a fresh state-local projection expansion cache.

    LEGACY API NOTE
    ---------------
    Older versions kept a module-global dictionary keyed by ``id(sigma0)``.
    That is not safe for a state-dependent projection: object ids can be reused
    across sequential runs, and stale expansions can then leak from one sigma0
    into another.  Keep this helper so old call sites remain valid, but make its
    lifetime exactly one public projection call.
    """
    del sigma0  # compatibility argument; state ownership is the caller's concern
    return {}

def project_system_adaa(
    src,
    dst,
    sigma0,
    m: int,
    *,
    exclude_scalar: bool = False,
    eps: float = 1e-14,
) -> None:
    """Compute dst = π_m^{σ0}(src) for Phoenix system ADAAs.

    Requirements:
    - src and dst are ADAA instances of the SAME class (same fixed KeyMap/size).
    - Their keymap is a system_keymap-style 2-level mapping (nums_tuple, reduced_word).

    Behavior:
    - dst is overwritten (zeroed first).
    - Terms with body <= m are copied.
    - Terms with body > m are expanded and accumulated into <=m terms.
    - The scalar (nums=()) is excluded by default.

    Notes on numeric types:
    - Works for real-only ADAAs (identifier 'real') and complex ADAAs ('real','imag').
      Projection weights are real; they are applied identically to real and imag parts.
    """

    if type(src) is not type(dst):
        raise TypeError("src and dst must have the same ADAA type")

    keymap = type(src)._KEYMAP
    if keymap is None:
        raise ValueError("ADAA type has no _KEYMAP bound")

    dst.to_zero()

    data_ids = list(type(src)._DATATYPES.keys())
    if not data_ids:
        return

    sparse_terms = _extract_sparse_terms_with_labels(src, keymap, eps=eps)
    if not sparse_terms:
        return

    off_cache: Dict[Tuple[Tuple[int, ...], str], int] = {}
    proj_cache = _get_projection_cache_for_sigma0(sigma0)
    sigma0_vectors = np.asarray(sigma0.vectors, dtype=float)

    def get_off(nums_new: Tuple[int, ...], word_new: str) -> int:
        key = (nums_new, word_new)
        off = off_cache.get(key)
        if off is None:
            off = keymap.key2off(nums_new, word_new)
            off_cache[key] = off
        return off

    scalar_off = None
    if not exclude_scalar:
        try:
            scalar_off = get_off(tuple(), "")
        except Exception:
            scalar_off = None

    if data_ids == ["real"]:
        for _, nums, word, coeff in sparse_terms:
            body = len(nums)

            if body == 0:
                if scalar_off is not None:
                    dst.data["real"][scalar_off] += coeff
                continue

            if body <= m:
                off = get_off(nums, word)
                dst.data["real"][off] += coeff
                continue

            expansion = project_term_delta_fast(
                nums,
                word,
                sigma0_vectors,
                m,
                exclude_scalar=exclude_scalar,
                eps=eps,
                cache=proj_cache,
            )

            for (nums_new, word_new), w in expansion.items():
                if exclude_scalar and len(nums_new) == 0:
                    continue
                off_new = get_off(nums_new, word_new)
                dst.data["real"][off_new] += coeff * w
        return

    if data_ids == ["real", "imag"]:
        for _, nums, word, coeff_r, coeff_i in sparse_terms:
            body = len(nums)

            if body == 0:
                if scalar_off is not None:
                    dst.data["real"][scalar_off] += coeff_r
                    dst.data["imag"][scalar_off] += coeff_i
                continue

            if body <= m:
                off = get_off(nums, word)
                dst.data["real"][off] += coeff_r
                dst.data["imag"][off] += coeff_i
                continue

            expansion = project_term_delta_fast(
                nums,
                word,
                sigma0_vectors,
                m,
                exclude_scalar=exclude_scalar,
                eps=eps,
                cache=proj_cache,
            )

            for (nums_new, word_new), w in expansion.items():
                if exclude_scalar and len(nums_new) == 0:
                    continue
                off_new = get_off(nums_new, word_new)
                dst.data["real"][off_new] += coeff_r * w
                dst.data["imag"][off_new] += coeff_i * w
        return

    raise TypeError(f"Unsupported ADAA datatypes: {data_ids}")

                
def project_system_adaa_inplace(
    adaa,
    sigma0,
    m: int,
    *,
    exclude_scalar: bool = False,
    eps: float = 1e-14,
) -> None:
    """In-place projection using an internal temporary ADAA."""
    tmp = adaa.__class__()
    project_system_adaa(adaa, tmp, sigma0, m, exclude_scalar=exclude_scalar, eps=eps)
    # Copy tmp -> adaa
    for did in type(adaa)._DATATYPES.keys():
        adaa.data[did][:] = tmp.data[did]

def project_system_adaa_between(
    src,
    dst,
    sigma0,
    m: int,
    *,
    exclude_scalar: bool = False,
    eps: float = 1e-14,
) -> None:
    """Compute dst = π_m^{σ0}(src) allowing different ADAA types.

    src: BIG ADAA (<= m_int)
    dst: SMALL ADAA (<= m)
    """
    src_km = type(src)._KEYMAP
    dst_km = type(dst)._KEYMAP
    if src_km is None or dst_km is None:
        raise ValueError("Both ADAA types must have a bound _KEYMAP")

    dst.to_zero()

    src_ids = list(type(src)._DATATYPES.keys())
    dst_ids = list(type(dst)._DATATYPES.keys())
    if src_ids != dst_ids:
        raise TypeError("src and dst must have same data identifiers (real/imag)")

    sparse_terms = _extract_sparse_terms_with_labels(src, src_km, eps=eps)
    if not sparse_terms:
        return

    off_cache: Dict[Tuple[Tuple[int, ...], str], int] = {}
    proj_cache = _get_projection_cache_for_sigma0(sigma0)
    sigma0_vectors = np.asarray(sigma0.vectors, dtype=float)

    def get_dst_off(nums_new: Tuple[int, ...], word_new: str) -> int:
        key = (nums_new, word_new)
        off = off_cache.get(key)
        if off is None:
            off = dst_km.key2off(nums_new, word_new)
            off_cache[key] = off
        return off

    scalar_off = None
    if not exclude_scalar:
        try:
            scalar_off = get_dst_off(tuple(), "")
        except Exception:
            scalar_off = None

    if src_ids == ["real"]:
        for _, nums, word, coeff in sparse_terms:
            body = len(nums)

            if body == 0:
                if scalar_off is not None:
                    dst.data["real"][scalar_off] += coeff
                continue

            if body <= m:
                off_new = get_dst_off(nums, word)
                dst.data["real"][off_new] += coeff
                continue

            expansion = project_term_delta_fast(
                nums,
                word,
                sigma0_vectors,
                m,
                exclude_scalar=exclude_scalar,
                eps=eps,
                cache=proj_cache,
            )

            for (nums_new, word_new), w in expansion.items():
                if exclude_scalar and len(nums_new) == 0:
                    continue
                off_new = get_dst_off(nums_new, word_new)
                dst.data["real"][off_new] += coeff * w
        return

    if src_ids == ["real", "imag"]:
        for _, nums, word, coeff_r, coeff_i in sparse_terms:
            body = len(nums)

            if body == 0:
                if scalar_off is not None:
                    dst.data["real"][scalar_off] += coeff_r
                    dst.data["imag"][scalar_off] += coeff_i
                continue

            if body <= m:
                off_new = get_dst_off(nums, word)
                dst.data["real"][off_new] += coeff_r
                dst.data["imag"][off_new] += coeff_i
                continue

            expansion = project_term_delta_fast(
                nums,
                word,
                sigma0_vectors,
                m,
                exclude_scalar=exclude_scalar,
                eps=eps,
                cache=proj_cache,
            )

            for (nums_new, word_new), w in expansion.items():
                if exclude_scalar and len(nums_new) == 0:
                    continue
                off_new = get_dst_off(nums_new, word_new)
                dst.data["real"][off_new] += coeff_r * w
                dst.data["imag"][off_new] += coeff_i * w
        return

    raise TypeError(f"Unsupported ADAA datatypes: {src_ids}")
