# tests/test_projection_term_delta.py
#
# First "real developer" unit test for Phoenix projection core.
# Focus: project_term_delta() correctness (δ-expansion combinatorics, signs,
# scalar exclusion) against an explicit reference implementation.
#
# This test is intentionally independent of commutator builders and Fortran.
#
# Run with:
#   pytest -q
#
# Assumptions:
# - sigma0 is a ProductState from phoenix.adaptHeisenberg.sigma0
# - projection.project_term_delta follows the documented δq definition.

import itertools
import math

import numpy as np
import pytest

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_term_delta


def _manual_project_term_delta(nums, word, sigma0: ProductState, m: int, *, exclude_scalar: bool) -> dict:
    """
    Explicit reference for:
      π_m(Q)= Σ_{|S|<=m} (Π_{i∈S} (q_i-μ_i I))  <Π_{j∉S} q_j>
      μ_i = <q_i>_sigma0
    where Q is the reduced Pauli term identified by (nums, word).

    Returns dict keyed by (nums_new_tuple, word_new_str) -> float coefficient.
    """
    k = len(nums)
    assert len(word) == k
   
    # μ_p = < q_p > for each position p in the reduced word
    mu = []
    for p in range(k):
        mu.append(float(sigma0.expect_reduced((nums[p],), word[p])))

    out = {}

    # Positions are 0..k-1 (NOT the physical site indices!)
    positions = list(range(k))

    # Iterate over all kept sets S with |S|<=m
    for r in range(0, m + 1):
        for kept_pos in itertools.combinations(positions, r):
            kept_pos = set(kept_pos)

            # contraction factor: < Π_{j∉S} q_j > = Π_{j∉S} μ_j
            contract = 1.0
            for p in positions:
                if p not in kept_pos:
                    contract *= mu[p]

            # Expand Π_{i∈S} (q_i - μ_i I)
            # = Σ_{T ⊆ S} (Π_{i∈S\T} (-μ_i)) Π_{i∈T} q_i
            # Each T yields a reduced Pauli term over sites in T.
            kept_list = sorted(kept_pos)
            for mask_bits in range(1 << len(kept_list)):
                coeff = contract
                nums_new = []
                word_new = []
                for bit_idx, p in enumerate(kept_list):
                    if (mask_bits >> bit_idx) & 1:
                        # keep q_p
                        nums_new.append(nums[p])
                        word_new.append(word[p])
                    else:
                        # take (-μ_p) * I
                        coeff *= (-mu[p])

                if exclude_scalar and len(nums_new) == 0:
                    continue

                key = (tuple(nums_new), "".join(word_new))
                out[key] = out.get(key, 0.0) + float(coeff)

    return out


def _assert_dict_allclose(d1: dict, d2: dict, *, atol=1e-14):
    keys = set(d1.keys()) | set(d2.keys())
    for k in keys:
        v1 = float(d1.get(k, 0.0))
        v2 = float(d2.get(k, 0.0))
        if not math.isclose(v1, v2, abs_tol=atol, rel_tol=0.0):
            raise AssertionError(f"Mismatch for key={k}: got {v1}, expected {v2}")


def test_project_term_delta_matches_explicit_reference():
    """
    Core test: project_term_delta equals an explicit δ-expansion reference.

    Adversarial choices:
    - sparse site indices (0,2,3)
    - mixed axes "xyz"
    - nontrivial local Bloch components so μ != 0
    - m=2 < k=3 so we force truncation
    """
    # N=4 product state; only sites 0,2,3 are used but we keep the array realistic
    vectors = np.zeros((4, 3), dtype=float)
    # site 0: <X>=0.1, <Y>=0.2, <Z>=0.3
    vectors[0] = (0.1, 0.2, 0.3)
    # site 2: <X>=0.4, <Y>=0.5, <Z>=0.6
    vectors[2] = (0.4, 0.5, 0.6)
    # site 3: <X>=0.7, <Y>=0.8, <Z>=0.9
    vectors[3] = (0.7, 0.8, 0.9)
    sigma0 = ProductState(vectors)

    nums = (0, 2, 3)
    word = "xyz"
    m = 2

    got = project_term_delta(nums, word, sigma0, m, exclude_scalar=True, eps=0.0)
    ref = _manual_project_term_delta(nums, word, sigma0, m, exclude_scalar=True)

    _assert_dict_allclose(got, ref, atol=1e-14)


def test_project_term_delta_scalar_exclusion_toggle():
    """
    Scalar exclusion is a frequent source of subtle errors.

    With exclude_scalar=True, the empty key ((), "") must not appear.
    With exclude_scalar=False, it must appear with the correct coefficient.
    """
    vectors = np.zeros((3, 3), dtype=float)
    vectors[0] = (0.2, 0.0, 0.0)  # <X0>=0.2
    vectors[1] = (0.0, 0.3, 0.0)  # <Y1>=0.3
    vectors[2] = (0.0, 0.0, -0.4)  # <Z2>=-0.4
    sigma0 = ProductState(vectors)

    nums = (0, 1, 2)
    word = "xyz"
    m = 0  # forces pure contraction -> scalar only

    got_excl = project_term_delta(nums, word, sigma0, m, exclude_scalar=True, eps=0.0)
    assert ((), "") not in got_excl
    assert len(got_excl) == 0  # nothing else can remain at m=0

    got_incl = project_term_delta(nums, word, sigma0, m, exclude_scalar=False, eps=0.0)
    assert ((), "") in got_incl

    # For m=0, π_0(Q) = <Q> I, and <XYZ> = <X0><Y1><Z2> for product state
    expected_scalar = 0.2 * 0.3 * -0.4
    assert math.isclose(float(got_incl[((), "")]), expected_scalar, rel_tol=0.0, abs_tol=1e-20)
