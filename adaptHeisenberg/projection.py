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

import itertools
from typing import Dict, Iterable, Tuple, Union, Optional

import numpy as np


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


def project_term_delta(
    nums: Tuple[int, ...],
    word: str,
    sigma0,
    m: int,
    *,
    exclude_scalar: bool = False,
    eps: float = 1e-14,
) -> Dict[Tuple[Tuple[int, ...], str], float]:
    """δq-based projection of a single reduced Pauli term to <=m-body terms.

    Implements:
      π_m^{(δ)}(Q)= Σ_{|S|<=m} (Π_{i∈S} δq_i) <Π_{j∉S} q_j>
      δq_i = q_i - <q_i> I
    """
    k = len(nums)
    if k != len(word):
        raise ValueError("nums and word length mismatch")

    if k == 0:
        return {} if exclude_scalar else { (tuple(), ""): 1.0 }

    # Precompute μ_i = <q_i> for each factor in this reduced word
    mu = [expect_single_site_product_state(sigma0, nums[p], word[p]) for p in range(k)]

    out: Dict[Tuple[Tuple[int, ...], str], float] = {}
    positions = range(k)

    # We allow |S|=0 only if scalar is allowed
    r_start = 0 if not exclude_scalar else 1
    r_max = min(m, k)

    for r in range(r_start, r_max + 1):
        for kept_pos in itertools.combinations(positions, r):
            kept_pos = tuple(kept_pos)

            # dropped part expectation <Q_{not in S}>
            dropped_pos = [p for p in positions if p not in kept_pos]
            if not dropped_pos:
                drop_val = 1.0
            else:
                # product state => product of single-site μ’s
                drop_val = 1.0
                for p in dropped_pos:
                    drop_val *= mu[p]

            if abs(drop_val) <= eps:
                continue

            # Expand Π_{i in S} (q_i - μ_i I)
            # => sum over T ⊆ S: (Π_{i in T} q_i) * Π_{j in S\T} (-μ_j)
            # We iterate T by iterating a subset mask over kept_pos
            kept_list = list(kept_pos)
            nS = len(kept_list)

            for mask in range(1 << nS):
                coeff = drop_val
                nums_new_list = []
                word_new_list = []

                for t_idx, p in enumerate(kept_list):
                    if (mask >> t_idx) & 1:
                        # keep operator q_p
                        nums_new_list.append(nums[p])
                        word_new_list.append(word[p])
                    else:
                        # replace with (-μ_p) * I
                        coeff *= (-mu[p])

                if abs(coeff) <= eps:
                    continue

                nums_new = tuple(nums_new_list)
                word_new = "".join(word_new_list)

                if exclude_scalar and len(nums_new) == 0:
                    continue

                out[(nums_new, word_new)] = out.get((nums_new, word_new), 0.0) + float(coeff)

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


def project_system_adaa(
    src,
    dst,
    sigma0,
    m: int,
    *,
    exclude_scalar: bool = True,
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

    # Zero dst
    dst.to_zero()

    # Determine which data identifiers exist
    data_ids = list(type(src)._DATATYPES.keys())
    if not data_ids:
        return

    # We do a dense scan; this matches Phoenix's dense storage model.
    # Later optimizations can restrict to subspaces or track sparsity.
    for i in range(src.size):
        # Quick skip if all data fields are ~0
        # (real-only: 1 field; complex: 2 fields)
        nonzero = False
        for did in data_ids:
            if abs(src.data[did][i]) > eps:
                nonzero = True
                break
        if not nonzero:
            continue

        labels = keymap.off2key(i).labels
        nums, word = _parse_system_key_labels(labels)

        body = len(nums)
        if body == 0:
            if not exclude_scalar:
                for did in data_ids:
                    dst.data[did][i] += src.data[did][i]
            continue

        if body <= m:
            # copy term
            for did in data_ids:
                dst.data[did][i] += src.data[did][i]
            continue

        # Expand
        expansion = project_term_delta(nums, word, sigma0, m, exclude_scalar=exclude_scalar, eps=eps)
        if not expansion:
            continue

        for (nums_new, word_new), w in expansion.items():
            if exclude_scalar and len(nums_new) == 0:
                continue
            off_new = keymap.key2off(nums_new, word_new)
            for did in data_ids:
                dst.data[did][off_new] += src.data[did][i] * w


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

    for i in range(src.size):
        # skip zeros
        if all(abs(src.data[did][i]) <= eps for did in src_ids):
            continue

        nums, word = _parse_system_key_labels(src_km.off2key(i).labels)
        body = len(nums)

        if body == 0:
            if not exclude_scalar:
                try:
                    off0 = dst_km.key2off(tuple(), "")
                except Exception:
                    continue
                for did in src_ids:
                    dst.data[did][off0] += src.data[did][i]
            continue

        if body <= m:
            off_new = dst_km.key2off(nums, word)
            for did in src_ids:
                dst.data[did][off_new] += src.data[did][i]
            continue

        expansion = project_term_delta(nums, word, sigma0, m, exclude_scalar=exclude_scalar, eps=eps)
        for (nums_new, word_new), w in expansion.items():
            if exclude_scalar and len(nums_new) == 0:
                continue
            off_new = dst_km.key2off(nums_new, word_new)
            for did in src_ids:
                dst.data[did][off_new] += src.data[did][i] * w
        

