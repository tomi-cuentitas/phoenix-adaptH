import numpy as np
import pytest

# import your actual ProductState
from adaptHeisenberg.sigma0 import ProductState

# import the scalar product kernel
from adaptHeisenberg.covariance_scalar_product import covar_inner_product
# (rename the import to wherever you placed the function)

# ---------------------------------------------------------------------
# Minimal KeyMap + ADAA mocks
# ---------------------------------------------------------------------

class _Key:
    def __init__(self, nums, word):
        self.labels = (nums, word)


class MinimalKeyMap:
    """
    Minimal KeyMap:
    offset -> (nums_tuple, reduced_word)
    """
    def __init__(self, mapping):
        self._mapping = mapping

    def off2key(self, off):
        return _Key(*self._mapping[off])


class MinimalADAA:
    """
    Minimal ADAA holding a dense real array and a KeyMap.
    """
    _DATATYPES = {"real": float}
    _KEYMAP = None

    def __init__(self, coeffs):
        self.data = {"real": np.array(coeffs, dtype=float)}
        self.size = len(coeffs)

    @classmethod
    def set_keymap(cls, keymap):
        cls._KEYMAP = keymap


# ---------------------------------------------------------------------
# Fixtures
# ---------------------------------------------------------------------

@pytest.fixture
def single_site_keymap():
    """
    offsets:
      0 -> I
      1 -> X
      2 -> Y
      3 -> Z
    """
    return MinimalKeyMap({
        0: ((), ""),        # identity
        1: ((0,), "x"),
        2: ((0,), "y"),
        3: ((0,), "z"),
    })


@pytest.fixture
def two_site_keymap():
    """
    offsets:
      0 -> I
      1 -> X0
      2 -> Z0
      3 -> X1
      4 -> Z1
      5 -> X0 X1
      6 -> Z0 Z1
    """
    return MinimalKeyMap({
        0: ((), ""),
        1: ((0,), "x"),
        2: ((0,), "z"),
        3: ((1,), "x"),
        4: ((1,), "z"),
        5: ((0, 1), "xx"),
        6: ((0, 1), "zz"),
    })


# ---------------------------------------------------------------------
# Tests
# ---------------------------------------------------------------------

def test_single_site_z_expectation(single_site_keymap):
    """
    <Z, Z>_cov = <Z^2> = 1   for pure |↑><↑|
    """
    MinimalADAA.set_keymap(single_site_keymap)

    # |↑> state: <Z>=+1
    sigma0 = ProductState(vectors=np.array([[0.0, 0.0, 1.0]]))

    Z = MinimalADAA([0.0, 0.0, 0.0, 1.0])

    val = covar_inner_product(Z, Z, sigma0)
    assert np.isclose(val, 1.0)


def test_single_site_x_zero(single_site_keymap):
    """
    <X, X>_cov = <X^2> = 1
    but <Z, X>_cov = 0 in |↑>
    """
    MinimalADAA.set_keymap(single_site_keymap)

    sigma0 = ProductState(vectors=np.array([[0.0, 0.0, 1.0]]))

    X = MinimalADAA([0.0, 1.0, 0.0, 0.0])
    Z = MinimalADAA([0.0, 0.0, 0.0, 1.0])

    assert np.isclose(covar_inner_product(X, X, sigma0), 1.0)
    assert np.isclose(covar_inner_product(Z, X, sigma0), 0.0)


def test_two_site_factorization(two_site_keymap):
    """
    <Z0 Z1, Z0 Z1> = <Z0^2><Z1^2> = 1
    """
    MinimalADAA.set_keymap(two_site_keymap)

    sigma0 = ProductState(vectors=np.array([
        [0.0, 0.0, 1.0],   # site 0 up
        [0.0, 0.0, 1.0],   # site 1 up
    ]))

    ZZ = MinimalADAA([0, 0, 0, 0, 0, 0, 1.0])

    val = covar_inner_product(ZZ, ZZ, sigma0)
    assert np.isclose(val, 1.0)


def test_two_site_mixed_state(two_site_keymap):
    """
    Z0 ⊗ X1 expectation vanishes if <X1>=0
    """
    MinimalADAA.set_keymap(two_site_keymap)

    sigma0 = ProductState(vectors=np.array([
        [0.0, 0.0, 1.0],   # site 0 up
        [0.0, 0.0, 0.0],   # site 1 maximally mixed
    ]))

    ZX = MinimalADAA([0, 0, 1.0, 1.0, 0, 0, 0])  # Z0 + X1

    val = covar_inner_product(ZX, ZX, sigma0)
    # only Z0 survives → <Z0^2> = 1
    assert np.isclose(val, 2.0)


def test_symmetry(two_site_keymap):
    """
    (A,B)_cov == (B,A)_cov
    """
    MinimalADAA.set_keymap(two_site_keymap)

    sigma0 = ProductState(vectors=np.array([
        [0.0, 0.0, 1.0],
        [0.0, 0.0, 1.0],
    ]))

    A = MinimalADAA([0, 1.0, 0, 0, 0, 0, 0])  # X0
    B = MinimalADAA([0, 0, 0, 0, 1.0, 0, 0])  # Z1

    ab = covar_inner_product(A, B, sigma0)
    ba = covar_inner_product(B, A, sigma0)

    assert np.isclose(ab, ba)
