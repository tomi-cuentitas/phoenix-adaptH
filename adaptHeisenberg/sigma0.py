"""phoenix.adaptHeisenberg.sigma0

Product reference state σ0 utilities.

Phoenix/Adaptive-Heisenberg context:
- σ0 is always a *product state* over N spins/qubits.
- It is parameterized by 3N real numbers (Bloch vector per site): (x_i, y_i, z_i).

This module provides:
- ProductState: stores Bloch vectors and computes expectation values of Pauli strings.
- Helper methods to compute expectations for *reduced* Pauli terms used by Phoenix
  hierarchical KeyMaps: (nums_tuple, reduced_word).

Conventions:
- Full Pauli strings use alphabet: 'I', 'X', 'Y', 'Z'.
- Reduced words (for active sites only) may use: 'x','y','z' (or upper-case).
- Identity may be represented as '0' or 'I' (ignored in products).

All expectations returned here are real (consistent with a Bloch-vector product state).
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Iterable, Optional, Sequence, Tuple, Union

import numpy as np


def _as_vectors(vectors: Union[Sequence[float], np.ndarray]) -> np.ndarray:
    """Normalize input into an array of shape (N, 3)."""
    arr = np.asarray(vectors, dtype=float)
    if arr.ndim == 1:
        if arr.size % 3 != 0:
            raise ValueError("Flat vectors must have length 3N")
        return arr.reshape(arr.size // 3, 3)
    if arr.ndim == 2 and arr.shape[1] == 3:
        return arr.copy()
    raise ValueError("vectors must be a flat length-3N array or shape (N,3) array")


def _axis_index(letter: str) -> Optional[int]:
    """Map a Pauli letter to an axis index.

    Returns:
        None for identity, 0 for X/x, 1 for Y/y, 2 for Z/z.
    """
    if letter in ("I", "i", "0"):
        return None
    if letter in ("X", "x"):
        return 0
    if letter in ("Y", "y"):
        return 1
    if letter in ("Z", "z"):
        return 2
    raise ValueError(f"Invalid Pauli letter: {letter!r}")


@dataclass(frozen=True)
class ProductState:
    """Product state σ0 defined by per-site Bloch vectors.

    Parameters
    ----------
    vectors:
        Either a flat array/list of length 3N: [x1,y1,z1,...,xN,yN,zN]
        or an array of shape (N,3).

    Notes
    -----
    We do not enforce physical constraints |r_i|<=1 here; callers may.
    """

    vectors: np.ndarray

    def __init__(self, vectors: Union[Sequence[float], np.ndarray]):
        v = _as_vectors(vectors)
        object.__setattr__(self, "vectors", v)

    @property
    def N(self) -> int:
        return int(self.vectors.shape[0])

    # ---------------------------------------------------------------------
    # Full-string expectations
    # ---------------------------------------------------------------------

    def expect(self, pauli_string: str, *, pad_right: bool = True) -> float:
        """Compute ⟨P⟩ for a full Pauli string over N sites.

        Args:
            pauli_string: string like 'XIZYX'. If shorter than N and pad_right=True,
                it is padded with 'I' on the right.
            pad_right: pad shorter strings to length N with identity.

        Returns:
            float expectation value.
        """
        if pad_right and len(pauli_string) < self.N:
            pauli_string = pauli_string + "I" * (self.N - len(pauli_string))
        if len(pauli_string) != self.N:
            raise ValueError(
                f"Pauli string length {len(pauli_string)} must match N={self.N}"
            )

        res = 1.0
        for i, p in enumerate(pauli_string):
            ax = _axis_index(p)
            if ax is None:
                continue
            res *= float(self.vectors[i, ax])
        return float(res)

    # ---------------------------------------------------------------------
    # Reduced-term expectations (Phoenix hierarchical system keymap)
    # ---------------------------------------------------------------------

    def expect_reduced(self, nums: Tuple[int, ...], word: str) -> float:
        """Compute ⟨P(nums, word)⟩ for the reduced representation.

        The reduced representation stores only non-identity sites:
          nums = (site indices)
          word = letters over {x,y,z} (or upper-case), same length as nums.

        Identity letters ('0'/'I') are accepted but contribute nothing.

        Returns:
            float expectation value.
        """
        if len(nums) != len(word):
            raise ValueError("nums and word must have the same length")
        if len(nums) == 0:
            return 1.0

        res = 1.0
        for site, let in zip(nums, word):
            if site < 0 or site >= self.N:
                raise IndexError(f"site index {site} out of range for N={self.N}")
            ax = _axis_index(let)
            if ax is None:
                continue
            res *= float(self.vectors[site, ax])
        return float(res)

    def reduced_to_full(self, nums: Tuple[int, ...], word: str) -> str:
        """Convert reduced (nums, word) into a full length-N Pauli string."""
        if len(nums) != len(word):
            raise ValueError("nums and word must have the same length")
        out = ["I"] * self.N
        for site, let in zip(nums, word):
            if let in ("0", "I", "i"):
                continue
            if let in ("x", "X"):
                out[site] = "X"
            elif let in ("y", "Y"):
                out[site] = "Y"
            elif let in ("z", "Z"):
                out[site] = "Z"
            else:
                raise ValueError(f"Invalid Pauli letter: {let!r}")
        return "".join(out)


# -------------------------------------------------------------------------
# Convenience constructors / validators
# -------------------------------------------------------------------------


def random_product_state(N: int, *, rng: Optional[np.random.Generator] = None) -> ProductState:
    """Generate a random product state Bloch vectors (not guaranteed pure).

    Each site vector is sampled uniformly from [-1,1]^3.
    """
    if rng is None:
        rng = np.random.default_rng()
    v = rng.uniform(-1.0, 1.0, size=(N, 3))
    return ProductState(v)


def validate_bloch_vectors(state: ProductState, *, tol: float = 1e-12) -> None:
    """Optional validator: ensures |r_i|<=1 for all sites."""
    norms = np.linalg.norm(state.vectors, axis=1)
    if np.any(norms > 1.0 + tol):
        bad = np.where(norms > 1.0 + tol)[0]
        raise ValueError(f"Invalid Bloch vectors at sites {bad.tolist()}: norms={norms[bad]}")
