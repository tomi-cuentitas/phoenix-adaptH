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
    CovarCaches,
    FrozenCovarOp,
    freeze_covar_op,
)


# -----------------------------
# Backend wrapper
# -----------------------------

@dataclass
class SystemBackend:
    # kernels
    commutate: Callable  # expected usage: commutate(rho=op, ham=ham) -> BIG ADAA

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
    eps_sp: float = 1e-10

    # Gram regularization cutoff.
    # This is used as ridge = pinv_rtol * max(||G||_2, 1).
    pinv_rtol: float = 1e-16

    # Generator interpolation:
    #   1.0 -> raw projected generator G_reg^{-1} Hij
    #   0.0 -> skew-projected generator G_reg^{-1} Hij_skew
    #   between -> interpolation
    generator_eta: float = 1.0

    # Frozen-window data.
    # `basis` stores mutable ADAA basis vectors, used for commutators and assembly.
    # `basis_frozen` stores immutable scalar-product representations.
    basis: Optional[List] = None
    basis_frozen: Optional[List[FrozenCovarOp]] = None

    sp: Optional[Callable] = None
    caches: Optional[CovarCaches] = None
    gram: Optional[np.ndarray] = None
    Hij: Optional[np.ndarray] = None

    # Regularized Gram solve cache.
    _G_lu: Optional[object] = None
    _G_piv: Optional[np.ndarray] = None
    _G_ridge: Optional[float] = None

    # Gram diagnostics.
    _Vk: Optional[np.ndarray] = None
    _wk: Optional[np.ndarray] = None

    # Generator / exponential caches.
    _A_cache: Optional[np.ndarray] = None
    _expA_cache_dt: Optional[float] = None
    _expA_cache: Optional[np.ndarray] = None

    # -------------------------------------------------------------------------
    # Build
    # -------------------------------------------------------------------------

    def build(self, seed_op_small, profile: bool = True, experimental: bool = False):
        """Build/rebuild the frozen local basis and projected geometry.

        The window is frozen after construction:
        - mutable ADAAs are retained in `self.basis` for commutators/assembly;
        - immutable `FrozenCovarOp`s are retained in `self.basis_frozen` for
          scalar products.

        Parameters
        ----------
        seed_op_small:
            Initial SMALL-system ADAA.
        profile:
            Print timing diagnostics.
        experimental:
            Reserved compatibility argument. Currently unused.
        """
        del experimental  # kept only for call-site compatibility

        timings = {}
        t_total_start = time.perf_counter()

        # Invalidate all old frozen-window data before starting a new build.
        self.basis = None
        self.basis_frozen = None
        self.gram = None
        self.Hij = None

        self._A_cache = None
        self._expA_cache_dt = None
        self._expA_cache = None

        self._G_lu = None
        self._G_piv = None
        self._G_ridge = None

        self._wk = None
        self._Vk = None

        # --------------------------------------------------
        # 1) Scalar product closure + safe caches
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.caches = CovarCaches.empty()
        self.sp = fetch_covar_scalar_product(
            self.sigma0,
            eps=self.eps_sp,
            caches=self.caches,
            cache_terms=False,
        )

        timings["scalar_product_setup"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 2) Basis construction + Gram matrix
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.basis, self.gram = self._build_basis_and_gram(seed_op_small)

        timings["build_basis_and_gram"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 3) Hij construction
        # --------------------------------------------------
        t0 = time.perf_counter()

        self.Hij = self._build_Hij_from_gram_shift()

        timings["build_Hij"] = time.perf_counter() - t0

        # --------------------------------------------------
        # 4) Regularized Gram solve preparation
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
                pct = 100.0 * v / total_time if total_time > 0.0 else 0.0
                print(f"{k:22s}: {v:8.4f} s   ({pct:6.2f}%)")
            print(f"{'TOTAL':22s}: {total_time:8.4f} s   (100.00%)\n")

        # These depend on Hij and G; invalidate after rebuild.
        # Do NOT reset _G_lu/_G_piv here: they were just prepared.
        self._A_cache = None
        self._expA_cache_dt = None
        self._expA_cache = None

        return self

    # -------------------------------------------------------------------------
    # Basis construction
    # -------------------------------------------------------------------------

    def _build_basis(self, seed_op_small):
        """Build basis only, without Gram matrix.

        Kept as a simple reference/debug path.
        """
        basis = [seed_op_small.copy()]

        for _ in range(self.ell):
            big = self.backend.commutate(rho=basis[-1], ham=self.ham)

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

            # Preserve the sign convention used by the fused builder.
            basis.append(-nxt)

        return basis

    def _build_basis_and_gram(self, seed_op_small):
        """Build Hierarchical basis and Gram matrix.

        Safety rule:
        - ADAAs in `basis` are kept for commutators and assembly.
        - FrozenCovarOp objects in `basis_frozen` are used for scalar products.

        Returns
        -------
        basis:
            Mutable ADAA basis [b_0, ..., b_ell].
        G:
            Gram matrix G[i,j] = (b_i, b_j)_cov.
        """
        if self.sp is None or self.caches is None:
            raise RuntimeError("Scalar product/caches not initialized.")

        n = self.ell + 1

        basis = [seed_op_small.copy()]
        basis_frozen: List[FrozenCovarOp] = [
            freeze_covar_op(basis[0], eps=self.eps_sp, caches=self.caches)
        ]

        G = np.zeros((n, n), dtype=float)

        # First diagonal entry.
        G[0, 0] = float(self.sp(basis_frozen[0], basis_frozen[0]))

        for k in range(1, n):
            # Generate next basis element from the previous mutable ADAA.
            big = self.backend.commutate(rho=basis[-1], ham=self.ham)

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

            # Sign convention:
            #   b_{k+1} = - P commutate(b_k).
            nxt = -nxt

            basis.append(nxt)

            # Freeze immediately after finalizing nxt.
            fnxt = freeze_covar_op(nxt, eps=self.eps_sp, caches=self.caches)
            basis_frozen.append(fnxt)

            # Fill new Gram column/row using frozen representations.
            for i in range(k + 1):
                v = float(self.sp(basis_frozen[i], fnxt))
                G[i, k] = v
                G[k, i] = v

        self.basis_frozen = basis_frozen
        return basis, G

    # -------------------------------------------------------------------------
    # Hij construction
    # -------------------------------------------------------------------------

    def _build_Hij_complete(self, project_each: bool = True) -> np.ndarray:
        """Slow debug construction of Hij.

        This should agree with `_build_Hij_from_gram_shift(project_last=True)`
        when `project_each=True`, up to numerical precision.

        Use this only for validation.
        """
        if self.basis is None:
            raise RuntimeError("Call build() first.")
        if self.basis_frozen is None:
            raise RuntimeError("Frozen basis missing. Call build() first.")
        if self.sp is None or self.caches is None:
            raise RuntimeError("Scalar product/caches not initialized.")

        n = len(self.basis)
        Hij = np.zeros((n, n), dtype=float)

        for j, bj in enumerate(self.basis):
            # Same sign convention as basis construction:
            #   b_{j+1} = - P commutate(b_j).
            big = -self.backend.commutate(rho=bj, ham=self.ham)

            if project_each:
                col_op = self.backend.SystemSmall()
                col_op.to_zero()

                project_system_adaa_between(
                    big,
                    col_op,
                    self.sigma0,
                    self.m_small,
                    exclude_scalar=self.exclude_scalar,
                    eps=self.eps_sp,
                )
            else:
                # Debug path only. This is safe only if freeze_covar_op supports
                # the BIG KeyMap and the scalar product can compare the result
                # against SMALL frozen basis vectors.
                col_op = big

            f_col = freeze_covar_op(col_op, eps=self.eps_sp, caches=self.caches)

            for i in range(n):
                Hij[i, j] = float(self.sp(self.basis_frozen[i], f_col))

        return Hij

    def _build_Hij_from_gram_shift(self, project_last: bool = True) -> np.ndarray:
        """Build Hij using the Krylov shift relation.

        For j < n-1:
            Hij[:, j] = G[:, j+1]

        The last column is computed explicitly from one additional projected
        commutator.

        The sign convention is identical to the basis builder:
            b_{k+1} = - P commutate(b_k).
        """
        if self.basis is None:
            raise RuntimeError("Call build() first.")
        if self.basis_frozen is None:
            raise RuntimeError("Frozen basis missing. Call build() first.")
        if self.gram is None:
            raise RuntimeError("Gram matrix missing. Call build() first.")
        if self.sp is None or self.caches is None:
            raise RuntimeError("Scalar product/caches not initialized.")

        n = len(self.basis)
        Hij = np.zeros((n, n), dtype=float)

        # Shift-fill under the same sign convention as basis construction.
        Hij[:, : n - 1] = self.gram[:, 1:n]

        # Last column from one extra commutator.
        big = -self.backend.commutate(rho=self.basis[-1], ham=self.ham)

        if project_last:
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
        else:
            # Debug path only.
            nxt = big

        fnxt = freeze_covar_op(nxt, eps=self.eps_sp, caches=self.caches)

        for i in range(n):
            Hij[i, n - 1] = float(self.sp(self.basis_frozen[i], fnxt))

        return Hij

    # -------------------------------------------------------------------------
    # Gram solve / generator
    # -------------------------------------------------------------------------

    def _prep_gram_pinv(self):
        """Prepare the regularized Gram solver.

        Despite the historical name, this currently prepares a ridge-regularized
        LU solve rather than an explicit pseudo-inverse.
        """
        if self.gram is None:
            raise RuntimeError("Call build() first.")

        G = 0.5 * (
            np.asarray(self.gram, dtype=float)
            + np.asarray(self.gram, dtype=float).T
        )
        self.gram = G

        w = np.linalg.eigvalsh(G)
        self._wk = w
        self._Vk = None

        if w.size:
            lam_max_abs = float(np.max(np.abs(w)))
            lam_min = float(np.min(w))
        else:
            lam_max_abs = 0.0
            lam_min = 0.0

        # For symmetric G, ||G||_2 = max(abs(eig(G))).
        scale = max(lam_max_abs, 1.0)
        ridge = float(self.pinv_rtol) * scale

        G_reg = G + ridge * np.eye(G.shape[0])

        # LU is robust even if tiny numerical indefiniteness prevents Cholesky.
        self._G_lu, self._G_piv = linalg.lu_factor(G_reg)
        self._G_ridge = ridge

        print("G eig:", w)
        print("G min eig:", lam_min)
        print("G max abs eig:", lam_max_abs)
        print("G ridge:", ridge)
        print("G cond:", lam_max_abs / max(abs(lam_min), 1e-300))

    def solve_gram(self, rhs):
        """Solve (G + ridge I) x = rhs using cached LU factors."""
        if self.gram is None:
            raise RuntimeError("Call build() first.")
        if self._G_lu is None or self._G_piv is None:
            raise RuntimeError("Gram solve factors missing. Call _prep_gram_pinv().")

        rhs = np.asarray(rhs, dtype=float)
        return linalg.lu_solve((self._G_lu, self._G_piv), rhs)

    def generator_A(self) -> np.ndarray:
        """Return coefficient-space generator.

        A = (1 - eta) * G_reg^{-1} Hij_skew + eta * G_reg^{-1} Hij

        eta = 0   -> fully skewed generator
        eta = 1   -> raw projected generator
        0 < eta < 1 -> interpolation
        """
        if self.Hij is None:
            raise RuntimeError("Call build() first.")

        if self._A_cache is not None:
            return self._A_cache

        eta = float(self.generator_eta)
        if not (0.0 <= eta <= 1.0):
            raise ValueError(f"generator_eta must be in [0,1], got {eta}")

        A_raw = self.solve_gram(self.Hij)

        Hij_skew = 0.5 * (self.Hij - self.Hij.T)
        A_skew = self.solve_gram(Hij_skew)

        self._A_cache = (1.0 - eta) * A_skew + eta * A_raw
        return self._A_cache

    def apply_A(self, phi: np.ndarray) -> np.ndarray:
        """Compute A phi without explicitly using the cached matrix A."""
        if self.Hij is None:
            raise RuntimeError("Call build() first.")

        phi = np.asarray(phi, dtype=float)
        return self.solve_gram(self.Hij @ phi)

    # -------------------------------------------------------------------------
    # Time stepping
    # -------------------------------------------------------------------------

    def step_expm(self, phi: np.ndarray, dt: float) -> np.ndarray:
        """Advance coefficients by one matrix-exponential step."""
        A = self.generator_A()
        dt = float(dt)

        if self._expA_cache is None or self._expA_cache_dt != dt:
            self._expA_cache = linalg.expm(dt * A)
            self._expA_cache_dt = dt

        return self._expA_cache @ np.asarray(phi, dtype=float)

    # -------------------------------------------------------------------------
    # Operator assembly / projection
    # -------------------------------------------------------------------------

    def assemble_operator(self, phi: np.ndarray):
        """Return ADAA O = Σ_i phi_i b_i."""
        if self.basis is None:
            raise RuntimeError("Call build() first.")

        ADAAType = type(self.basis[0])
        out = ADAAType()
        out.to_zero()

        phi = np.asarray(phi, dtype=float)
        if phi.shape[0] != len(self.basis):
            raise ValueError(f"phi has length {phi.shape[0]}, expected {len(self.basis)}")

        data_ids = list(type(out)._DATATYPES.keys())

        for c, b in zip(phi, self.basis):
            cf = float(c)
            if abs(cf) < 1e-12:
                continue

            if type(b) is not ADAAType:
                raise TypeError("All basis ADAAs must have the same type.")

            for did in data_ids:
                out.data[did][:] += cf * b.data[did]

        return out

    def project_operator(self, O):
        """Compute phi such that O ≈ Σ_i phi_i b_i via regularized Gram solve."""
        if self.basis is None:
            raise RuntimeError("Call build() first.")
        if self.basis_frozen is None:
            raise RuntimeError("Frozen basis missing. Call build() first.")
        if self.sp is None or self.caches is None:
            raise RuntimeError("Scalar product/caches not initialized.")

        if isinstance(O, FrozenCovarOp):
            fO = O
        else:
            fO = freeze_covar_op(O, eps=self.eps_sp, caches=self.caches)

        rhs = np.array(
            [float(self.sp(bi, fO)) for bi in self.basis_frozen],
            dtype=float,
        )

        return self.solve_gram(rhs)
