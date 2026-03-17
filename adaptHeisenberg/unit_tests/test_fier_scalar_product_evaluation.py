"""
Consider, for the time being, a system composed exclusively of spin-$\frac{1}{2}$ sites, with a known basis of observables for each one of them $\{\mathds{1}, X,Y,Z\}$. the conventional Pauli operators.
Under the HS geometry, equivalently under the covar geometry with reference state $\sigma = \mathds{1}/\Tr \mathds{1}$, any two Pauli strings, $P = \otimes_{i=1} p_i$ and $Q = \otimes_{i=1} q_i$ s.t. for some $j$ it holds that $p_j \neq q_j$ are orthogonal, namely 
\[
    (P, Q)_{\rm HS} \propto \Tr (P^\dagger Q) = \left\{ \begin{array}{cc}
       1 \quad {\rm if } \quad p_i = q_i \, \,\forall i &  \\
       0  \quad  {\rm otherwise}
    \end{array} \right.
\]

However, w.r.t any other reference state $\sigma$, this may not hold. 
In fact, the orthogonality condition changes if one uses the covar scalar product, let $P = \otimes_i pi_i$ and $Q= \otimes_i q_i$
\[
    (P, Q)_{\rm covar(\sigma)} = 0 \Longleftrightarrow \Re (\prod_j t_j ) = 0 \quad t_j = \Tr \sigma_j p_j q_j,
 \]
which follows immediately from the relation of the covariance scalar product and the GNS scalar product. 
Since $\sigma$ is a product state, for each site $j$, $t_j$ can be written in terms of the local Bloch vector $\vec{r}_j$, with components $r_j^\alpha = \Tr \sigma_j \sigma^\alpha$.
There are, thus, only a few possible combinations, which we list as follows
\begin{enumerate}
    \item If $p_j = q_j = \mathds{1}$: $t_j =1$ (real).
    \item If $p_j = \mathds{1}, q_j = \sigma^{\alpha}$ (or viceversa): $t_j = m^\alpha_j$ (real).
    \item If $p_j = q_j = \sigma^\alpha$, then $p_jq_j = \mathds{1}$: $t_j = 1$ (real).
    \item If $p_j = \sigma^\alpha, q_j = \sigma^\beta$ with $\alpha \neq \beta$, then $p_jq_j = i \epsilon_{\alpha \beta \gamma} \sigma_j^\gamma$: $t_j = i \epsilon_{\alpha \beta \gamma} m_j^\gamma$ (purely imaginary number).
\end{enumerate}

All in all, the possible values for $t_j$ are $\{1, m_j^\alpha, i \epsilon_{\alpha \beta \gamma} m_j^\gamma\}$.
Thus, the orthonormality conditions are changed in the covariance scalar product, w.r.t. the ones in HS, namely, 
"""

import math
import numpy as np
import pytest

from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.covariance_scalar_product import fetch_covar_scalar_product

def _build_system_keymap(keys):
    root = KeyMap(name="sys")
    
    by_nums = {}
    for nums, word in keys: 
        by_nums.setdefault(nums, set()).add(word)
        
    for nums, words in by_nums.items():
        sub = KeyMap(name = f"sub_{nums}")
        sub.labels = (nums,)
        
        for w in sorted(words):
            sub.link(w, Entry(name = f"w={w}"))
        
        root.link(nums, sub)
    
    root.update()
    
    return root
    

def test_covar_sp_results_from_pj_qj():
    
    ### first we start with short strings , just to 
    ### check all possible values for tj 
    
    
    sigma0_z = ProductState([.0, .0, 1., 
                             .0, .0, 1.])
    sp_local = fetch_covar_scalar_product(sigma0)
    
    p_src_terms = {
        ((0,), "x"). -2.,
        ((0,), "y"). -2.,
        ((0,), "z"). -2.,
    }
            
    all_keys = set(p_src_terms.keys())
    km = _build_system_keymap(all_keys)
    op = NumPyRA.set_keymap(km)
    
    
    



