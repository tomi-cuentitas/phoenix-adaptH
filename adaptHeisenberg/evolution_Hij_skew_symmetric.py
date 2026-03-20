# adaptHeisenberg/evolution.py

from __future__ import annotations
import time

from dataclasses import dataclass
from typing import Callable, List, Optional

import numpy as np
import scipy.linalg as linalg

from phoenix.keymap import KeyMap
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_system_adaa_between
from adaptHeisenberg.covariance_scalar_product import (
    fetch_covar_scalar_product,
    gram_matrix,
    TermListCache,
    CovarCaches,
)

# -----------------------------
# Backend wrapper
# -----------------------------

@dataclass
class SystemBackend:
    # kernels
    commutate: Callable  # (rho, ham) -> BIG ADAA

    # types/keymaps
    SystemSmall: type
    SystemBig: type
    HamiltonADAA: type

    km_small: KeyMap
    km_big: KeyMap
    km_ham: KeyMap


# -----------------------------
# Frozen basis evolver
# -----------------------------

@dataclass
class FrozenBasisEvolver:
    backend: SystemBackend
    ham: object
    sigma0: ProductState
    m_small: int
    ell: int

    exclude_scalar: bool = False
    eps_sp: float = 1e-14

    # gram pseudo-inverse controls
    pinv_rtol: float = 1e-8   # relative cutoff
    pinv_atol: float = 1e-14  # absolute cutoff floor
    gram_reg: float = 0.0     # Tikhonov regularization on kept modes

    # cached stabilized generator
    _A_cached: Optional[np.ndarray] = None

    # frozen data
    basis: Optional[List] = None
    sp: Optional[Callable] = None
    caches: Optional[CovarCaches] = None
    gram: Optional[np.ndarray] = None
    Hij: Optional[np.ndarray] = None

    # eig pseudo-inverse factors
    _Vk: Optional[np.ndarray] = None
    _wk: Optional[np.ndarray] = None


    def build(self, seed_op_small, profile=False):
        """(Re)build basis + geometry for a frozen window starting from seed_op_small."""

        timings = {}
        t_total_start = time.perf_counter()

        # --------------------------------------------------
        # 1) Scalar product closure + caches
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.caches = CovarCaches.empty()
        self.term_cache = TermListCache()   
        self.sp = fetch_covar_scalar_product(self.sigma0, 
                                             eps=self.eps_sp,
                                             caches = self.caches,
                                             term_cache = self.term_cache,)

        timings["scalar_product_setup"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 2) Basis construction
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.basis = self._build_basis(seed_op_small)

        timings["build_basis"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 3) Gram matrix
        # --------------------------------------------------
        t0 = time.perf_counter()

        G = gram_matrix(self.basis, self.sigma0, sp=self.sp, symmetric = True)
        self.gram = G

        timings["build_gram"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 4) Hij construction
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.Hij = self._build_Hij_from_gram_shift(project_last=True)
        self._A_cached = None
        timings["build_Hij"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 5) Gram pseudo-inverse preparation
        # --------------------------------------------------
        t0 = time.perf_counter()
           
        self._prep_gram_pinv()

        timings["prep_gram_pinv"] = time.perf_counter() - t0

        # --------------------------------------------------
        # Total
        # --------------------------------------------------
        total_time = time.perf_counter() - t_total_start

        if profile:
            print("\n=== build() timing breakdown ===")
            for k, v in timings.items():
                pct = 100 * v / total_time
                print(f"{k:22s}: {v:8.4f} s   ({pct:6.2f}%)")
            print(f"{'TOTAL':22s}: {total_time:8.4f} s   (100.00%)\n")

        return self

    def _build_basis(self, seed_op_small):
        b = [seed_op_small.copy()]
        for _ in range(self.ell):
            big = self.backend.commutate(rho=b[-1], ham=self.ham)

            nxt = self.backend.SystemSmall()
            nxt.to_zero()

            project_system_adaa_between(
                big,
                nxt,
                self.sigma0,
                self.m_small,
                exclude_scalar=self.exclude_scalar,
                eps=self.eps_sp,
            )
            b.append(nxt)
        return b

    def _build_Hij_from_gram_shift(self, project_last: bool = True) -> np.ndarray:
        if self.basis is None:
            raise RuntimeError("Call build() first.")

        n = len(self.basis)
        Hij = np.zeros((n, n), dtype=float)

        # shift-fill
        Hij[:, : n - 1] = self.gram[:, 1:n]

        # last column from one commutator
        big = self.backend.commutate(rho=self.basis[-1], ham=self.ham)

        if project_last:
            nxt = self.backend.SystemSmall()
            nxt.to_zero()
            project_system_adaa_between(
                big, nxt, self.sigma0, self.m_small,
                exclude_scalar=self.exclude_scalar,
                eps=self.eps_sp,
            )
        else:
            nxt = big  # debug only; will be slow

        # IMPORTANT: sp() must accept (SMALL, SMALL) here for the fast path
        for i in range(n):
            Hij[i, n - 1] = float(self.sp(self.basis[i], nxt))

        return Hij
    
    
    def _prep_gram_pinv(self):
        """
        Prepare a numerically robust spectral pseudo-inverse of the Gram matrix.

        This routine diagonalizes the symmetric Gram matrix G and retains only the
        well-resolved positive eigenspace. The pseudo-inverse is then represented as

            G^+ = V_k diag(1 / (w_k + gram_reg)) V_k^T

        on the retained subspace.

        Retention criterion
        -------------------
        A Gram eigenvalue w is kept iff

            w > max(pinv_atol, pinv_rtol * w_pos_max),

        where w_pos_max is the largest positive Gram eigenvalue.

        Why this is safer
        -----------------
        - Slightly negative eigenvalues caused by roundoff are discarded.
        - Near-null modes are not inverted.
        - Optional `gram_reg` gives Tikhonov-style damping on kept modes.

        Side effects
        ------------
        Stores:
            self._Vk : eigenvectors of retained Gram subspace, shape (n, k)
            self._wk : retained positive eigenvalues, shape (k,)
            self._A_cached : reset to None
         """
        if self.gram is None:
            raise RuntimeError("Call build() first.")

        G = 0.5 * (self.gram + self.gram.T)
        w, V = np.linalg.eigh(G)

        pos = w[w > 0.0]
        w_pos_max = float(np.max(pos)) if pos.size else 0.0
        tol = max(self.pinv_atol, self.pinv_rtol * w_pos_max)

        keep = w > tol

        if not np.any(keep):
            raise np.linalg.LinAlgError(
                "No Gram eigenmodes survived pseudo-inverse cutoff. "
                f"max positive eig = {w_pos_max:.3e}, tol = {tol:.3e}"
            )

        self._Vk = V[:, keep]
        self._wk = w[keep]
        self._A_cached = None

    def solve_gram(self, rhs):
        """
        Apply the filtered Gram pseudo-inverse to a vector or matrix.

        Parameters
        ----------
        rhs : np.ndarray
            Either a vector of shape (n,) or a matrix of shape (n, k).

        Returns
        -------
        np.ndarray
            The filtered pseudo-inverse action G^+ rhs, with the same shape as rhs.

        Mathematical action
        -------------------
        If G = V diag(w) V^T and only the retained positive modes are kept, then

            G^+ rhs = V_k diag(1 / (w_k + gram_reg)) V_k^T rhs.

        Notes
        -----
        - Modes below the cutoff prepared in `_prep_gram_pinv()` are discarded.
        - `gram_reg > 0` adds a small damping only on the kept modes.
        - This function never forms a dense inverse explicitly.
        """
        if self._Vk is None or self._wk is None:
            raise RuntimeError("Call build() first (pinv not prepared).")

        Vk = self._Vk
        wk = self._wk + self.gram_reg

        rhs = np.asarray(rhs, dtype=float)

        if rhs.ndim == 1:
            return Vk @ ((Vk.T @ rhs) / wk)
        elif rhs.ndim == 2:
            return Vk @ ((Vk.T @ rhs) / wk[:, None])
        else:
            raise ValueError(f"rhs must be 1D or 2D, got shape {rhs.shape}")

    def generator_A(self) -> np.ndarray:
        """
        Build and cache the stabilized Gram-skew reduced generator.

        Returns
        -------
        np.ndarray
            Matrix A of shape (n_basis, n_basis) satisfying, on the retained Gram
            subspace, the discrete skew-adjointness condition

                A^T G + G A ≈ 0.

        Construction
        ------------
        Starting from the raw reduced generator

            A0 = G^+ H,

        define its Gram-adjoint by

            A0^sharp = G^+ A0^T G,

        and then enforce Gram-skew symmetry via

            A = 1/2 (A0 - A0^sharp).

        Why this helps
        --------------
        The raw operator G^+ H can contain spurious symmetric drift, especially when
        G is ill-conditioned or H is only approximately skew with respect to the
        projected geometry. The Gram-skew projection suppresses that drift and is
        the correct stabilized generator to use for time stepping.
        """
        if self.Hij is None or self.gram is None:
            raise RuntimeError("Call build() first.")

        if self._A_cached is not None:
            return self._A_cached

        G = 0.5 * (self.gram + self.gram.T)
        #H = 0.5 * (self.Hij - self.Hij.T)

        A0 = self.solve_gram(self.Hij)
        Asharp = self.solve_gram(A0.T @ G)
        A = 0.5 * (A0 - Asharp)

        self._A_cached = A
        return A

    def apply_A(self, phi: np.ndarray) -> np.ndarray:
        """
        Apply the stabilized reduced generator to a coefficient vector.

        Parameters
        ----------
        phi : np.ndarray
            Coefficient vector in the current frozen basis, shape (n_basis,).

        Returns
        -------
        np.ndarray
            The vector A @ phi, where A is the cached Gram-skew stabilized generator.

        Notes
        -----
        This intentionally uses the same stabilized generator as `step_expm()`.
        It avoids inconsistencies between different integrators.
        """
        A = self.generator_A()
        return A @ np.asarray(phi, dtype=float)

    def step_rk4(self, phi: np.ndarray, dt: float) -> np.ndarray:
        """
        Advance one Runge-Kutta 4 step using the stabilized reduced generator.

        Parameters
        ----------
        phi : np.ndarray
            Current coefficient vector, shape (n_basis,).
        dt : float
            Time step.

        Returns
        -------
        np.ndarray
            Updated coefficient vector after one RK4 step.

        Notes
        -----
        This routine uses `apply_A()`, which in turn uses the same cached
        Gram-skew stabilized generator as `step_expm()`.
        """
        phi = np.asarray(phi, dtype=float)
        k1 = self.apply_A(phi)
        k2 = self.apply_A(phi + 0.5 * dt * k1)
        k3 = self.apply_A(phi + 0.5 * dt * k2)
        k4 = self.apply_A(phi + dt * k3)
        return phi + (dt / 6.0) * (k1 + 2 * k2 + 2 * k3 + k4)

    def step_expm(self, phi: np.ndarray, dt: float) -> np.ndarray:
        """
        Advance one exact matrix-exponential step in the frozen reduced basis.

        Parameters
        ----------
        phi : np.ndarray
            Current coefficient vector, shape (n_basis,).
        dt : float
            Time step.

        Returns
        -------
        np.ndarray
            Updated coefficient vector exp(dt * A) @ phi, where A is the cached
            stabilized Gram-skew generator.
        """
        A = self.generator_A()
        return linalg.expm(dt * A) @ np.asarray(phi, dtype=float)

    def assemble_operator(self, phi: np.ndarray):
        """Return ADAA O = Σ phi_i b_i."""
        if self.basis is None:
            raise RuntimeError("Call build() first.")

        ADAAType = type(self.basis[0])
        out = ADAAType()
        out.to_zero()

        for c, b in zip(phi, self.basis):
            if abs(c) >= 1e-12:
                out = out + (b * float(c))
                
        return out

    def project_operator(self, O):
        """Compute phi such that O ≈ Σ phi_i b_i via gram pseudo-inverse."""
        if self.basis is None:
            raise RuntimeError("Call build() first.")

        rhs = np.array([float(self.sp(bi, O)) for bi in self.basis], dtype=float)
        return self.solve_gram(rhs)
