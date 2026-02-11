"""phoenix.adaptHeisenberg.basis_pipeline

Baseline end-to-end pipeline to

1) build a projected-Krylov basis B = {b_i} from iterated (buffered) commutators
2) compute the covariance Gram matrix G_ij = (b_i, b_j)_cov(σ0)
3) orthonormalize the basis via metric whitening (Cholesky) and from this, the H_ij = (b_i, [H, bj])_covar(σ0)
4) represent observables O_\ell,m,\epsilon as coefficient vectors \phi in that basis and assemble
"""

from __future__ import anotations

from dataclasses iimport dataclass
from typing import Callable, List, Optional, Sequence

import numpy as np
import scipy.linalg as linalg

from adaptHeisenberg.sigma0 import ProductState
from covariance_scalar_product import (CovarCaches, 
                                       fetch_covar_inner_product, 
                                       gram_matrix)
from buffer_free_commutator_builder import 

@dataclass
class Basis:
    """Projected Krylov basis container"""
    basis: List # list of ADAAs
    sigma0: object,
    m: int,
    gram: Optional[np.ndarray] = None,
    caches: Optional[CovarCaches] = None
    
    
    def compute_gram(self, *, eps: float = 1e-14, symmetric: bool = True) -> np.ndarray:
        
        if self.caches is None:
            self.caches = CovarCaches.empty()
        self.gram = gram_matrix(
            self.basis, self.sigma0, eps = eps, caches = self.caches, 
            symmetric = symmetric
        )
        return self.gram
    
@dataclass
class operatorExpansion: 
    """Coordinate representation of O = \sum_i \phi_i b_i, over a given basis"""
    
    basis_obj: Basis ### basis of ADAAs
    phi: np.ndarry ### shape (ell+1,)
    
    def assemble(self):
        """ Assemble an ADAA operator as O = \sum_i \phi_i b_i"""
        
        bops = self.basis_obj.basis
        if len(bops) == 0:
            raise ValueError("Empty basis")
        cls = bops[0].__class__
        out = cls() ### size fixed by keymap
        out.to_zero()
        for c, b in zip(self.phi, bops):
            if c == 0:
                continue
            out = out + (b * float(c))
        return out

    
    
def build_projected_krylov_basis(
    *,
    b0, 
    ham,
    sigma0: ProductState, 
    m: int,
    ell: int,
    commutate: Callable,
    SystemSmall_ADAA,
    SystemBig_ADAA,
    exclude_scalar: bool = True, 
    eps: float = 1e-14,
) -> Basis:
    """Build a projected Hierarchical Basis from seed operator b0, to be included in the basis, 
       of dimensionality $\ell$ and with elements being of, at most, $m$-body operators.
    """
    
    if ell < 0:
        raise ValueError("ell must be positive")
    if not isinstance(b0, SystemSmall_ADAA):
        raise TypeError(f"b0 must be an instance of {SystemSmall_ADAA.__name__}")
    
    basis: List = [b0.copy()]
    b_curr = b0
    
    for _k in range(ell):
        tmp_big = commutate(rho = b_curr, ham = ham)
        if not isinstance(tmp_big, SystemBig_ADAA):
            raise TypeError("commutate returned unexpected type")
    
        
        b_next = SystemSmall_ADAA() # fixed size by keymap
        project_system_adaa_between(
            tmp_big, b_next, sigma0, m,
            exclude_scalar = exclude_scalar, 
            eps = eps, 
        )
        basis.append(b_next)
        b_curr = b_next
        
    return Basis(basis = basis, sigma0=sigma0, m = m, ell = ell, gram = None, s = CovarCaches.empty())
    

def project_op_onto_basis(
    op,
    basis_obj: Basis,
    *,
    eps: float = 1e-14,
    use_cached_gram: bool = True,
): -> np.ndarray:
    
    """Compute coefficients φ by solving G φ = rhs with rhs_i = (b_i, op)_covar(sigma0)."""
    if (basis_obj.gram is None) or (not use_cached_gram):
        gram = basis_obj.compute_gram(eps=eps)
    else:
        gram = basis_obj.gram

    if basis_obj.caches is None:
        basis_obj.caches = CovarCaches.empty()

    rhs = np.array(
        [fetch_covar_scalar_product(bi, op, basis_obj.sigma0, eps=eps, caches=basis_obj.caches)
         for bi in basis_obj.basis],
        dtype=float,
    )
    phi = np.linalg.solve(gram, rhs)
    return phi



def assemble_from_basis(phi: np.ndarray, basis_obj: Basis):
    """Assemble Σ_i φ_i b_i as an ADAA."""
    return operatorExpansion(basis_obj=basis_obj, phi=np.asarray(phi, dtype=float)).assemble()
    
    