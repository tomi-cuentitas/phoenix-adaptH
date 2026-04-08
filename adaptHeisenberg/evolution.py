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

    # gram pseudo-inverse cutoff
    pinv_rtol: float = 1e-12  # relative to max eigenvalue

    # frozen data
    basis: Optional[List] = None
    sp: Optional[Callable] = None
    caches: Optional[CovarCaches] = None
    gram: Optional[np.ndarray] = None
    Hij: Optional[np.ndarray] = None

    # eig pseudo-inverse factors
    _Vk: Optional[np.ndarray] = None
    _wk: Optional[np.ndarray] = None


    def build(self, seed_op_small, profile=True):
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

        self.Hij = self._build_Hij_from_gram_shift()

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
            b.append(-nxt)
        return b

    def _build_Hij_from_gram_shift(self, project_last: bool = False) -> np.ndarray:
        if self.basis is None:
            raise RuntimeError("Call build() first.")

        n = len(self.basis)
        Hij = np.zeros((n, n), dtype=float)

        # shift-fill
        Hij[:, : n - 1] = self.gram[:, 1:n]

        # last column from one commutator
        big = -self.backend.commutate(rho=self.basis[-1], ham=self.ham)

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
        """Eigen pseudo-inverse prep for gram: G^+ = V diag(1/w) V^T on kept subspace."""
        if self.gram is None:
            raise RuntimeError("Call build() first.")

        w, V = np.linalg.eigh(self.gram)
        wmax = float(np.max(w)) if w.size else 0.0
        tol = self.pinv_rtol * wmax

        keep = w > tol
        self._Vk = V[:, keep]
        self._wk = w[keep]

    def solve_gram(self, rhs):
        """Apply G^+ rhs (vector or matrix)."""
        if self._Vk is None or self._wk is None:
            raise RuntimeError("Call build() first (pinv not prepared).")

        Vk = self._Vk
        wk = self._wk

        rhs = np.asarray(rhs)

        if rhs.ndim == 1:
            # rhs: (n,)
            return Vk @ ((Vk.T @ rhs) / wk)          # -> (n,)
        elif rhs.ndim == 2:
            # rhs: (n,k)
            return Vk @ ((Vk.T @ rhs) / wk[:, None]) # -> (n,k)
        else:
            raise ValueError(f"rhs must be 1D or 2D, got shape {rhs.shape}")

    def generator_A(self) -> np.ndarray:
        """
        A = (1 - eta) * G^+ Hij_skew + eta * G^+ Hij

        eta = 0   -> fully skewed generator (stable, conservative)
        eta = 1   -> raw Phoenix generator
        0 < eta < 1 -> interpolation
        """
        if self.Hij is None:
            raise RuntimeError("Call build() first.")

        # raw
        A_raw = self.solve_gram(self.Hij)

        # skewed Hij
        Hij_skew = 0.5 * (self.Hij - self.Hij.T)
        A_skew = self.solve_gram(Hij_skew)

        # blend
        eta = 0.001
        return (1.0 - eta) * A_skew + eta * A_raw

    def apply_A(self, phi: np.ndarray) -> np.ndarray:
        """Compute A phi without forming A explicitly."""
        if self.Hij is None:
            raise RuntimeError("Call build() first.")
        return self.solve_gram(self.Hij @ phi)

    def step_expm(self, phi: np.ndarray, dt: float) -> np.ndarray:
        A = self.generator_A()
        return linalg.expm(dt * A) @ phi

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
