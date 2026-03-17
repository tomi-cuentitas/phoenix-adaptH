"""
Buffered commutator + projection integration test (internally consistent with sigma0.py).

Pipeline:
  tmp_big = [H, b_small]    computed in BIG space (<= m_int)
  b_next  = π_m(tmp_big)    projected back into SMALL (<= m_small)

We choose m_small < m_int so that tmp_big contains higher-body terms and
projection is nontrivial.

Run:
  python adaptHeisenberg/development_tests/test_proj_comm_int_buffered_v2.py
"""

from __future__ import annotations
import time
start = time.time()


import math
import numpy as np

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_system_adaa_between
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.covariance_scalar_product import fetch_covar_scalar_product


def _expected_system_size(N: int, m: int) -> int:
    return sum(math.comb(N, k) * (3**k) for k in range(0, min(N, m) + 1))


def _print_nonzeros(label: str, adaa, N: int, keymap, max_print: int = 50) -> None:
    print(label)
    shown = 0
    for i in range(adaa.size):
        v = adaa.data["real"][i]
        if abs(v) > 1e-12:
            nums, word = keymap.off2key(i).labels
            full = ["I"] * N
            for s, w in zip(nums, word):
                full[int(s)] = str(w).upper()
            print(" ", "".join(full), float(v))
            shown += 1
            if shown >= max_print:
                break
    if shown == 0:
        print("  (empty)")


def main() -> None:
    N = 15
    m_small = 3         # SMALL cutoff (forces projection to do something)
    h_body_max = 2      # 2-body Hamiltonian => m_int = m_small + 1 = 2
    ell = 15

    commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
        num_spins=N,
        m_small=m_small,
        h_body_max=h_body_max,
        real_only=True,
        lib_basename=f"pauli_comm_buf_N{N}_m{m_small}",
        py_module_name=f"ecplib_buf_N{N}_m{m_small}",
        recompile=True,
    )

    m_int = min(N, m_small + (h_body_max - 1))
    print("Expected SMALL size =", _expected_system_size(N, m_small))
    print("SystemSmall.size    =", SystemSmall().size)
    print("Expected BIG size   =", _expected_system_size(N, m_int))
    print("SystemBig.size      =", SystemBig().size)

    # H = X0X1 + X1X2 + X2X3
    H = HamiltonADAA()
    H.to_zero()
    for nums in [(0, 1), (1, 2), (2, 3), (3, 4), (4, 5),
                (5, 6), (6, 7), (7, 8), (8, 9),
                (9, 10), (10, 11), (11, 12), (12, 13), (13, 14)
                ]:
        H.data["real"][km_ham.key2off(nums, "xx")] = 1.
        H.data["real"][km_ham.key2off(nums, "yy")] = -1.

    # b0 = Z0 (SMALL)
    b = SystemSmall()
    b.to_zero()
    b.data["real"][km_small.key2off((0,), "z")] = 0.5

    # sigma0: choose <X1>=1 so contracting Y0X1 -> Y0 is nonzero.
    # ProductState expects a flat 3N vector: [x0g,y0,z0, x1,y1,z1, ...]
    bloch = np.zeros(3 * N, dtype=float)
    bloch[0 * 3 + 2] = 1.   # site 0: +Z
    bloch[1 * 3 + 2] = 1.   # site 1: +X or +Z
    bloch[2 * 3 + 2] = 1.   # site 2: +Z
    bloch[3 * 3 + 2] = 1.   # site 3: +Z
    
    sigma0 = ProductState(bloch)
    sp_local = fetch_covar_scalar_product(sigma0)
    
    basis = [b.copy()]
    for k in range(1, ell + 1):
        tmp_big = commutate(rho=b, ham=H) 
        #_print_nonzeros(f"tmp_big = [H, b{k-1}] (BIG)", tmp_big, N, km_big)
                
        b_next = SystemSmall()
        b_next.to_zero()
        project_system_adaa_between(tmp_big, b_next, sigma0, m=m_small)

        #_print_nonzeros(f"b{k} = π_m(tmp_big) (SMALL)", b_next, N, km_small)
        #print()
        b = b_next
        basis.append(b)
    
    
    gram = np.array([[ sp_local(op1, op2) for op1 in basis ] for op2 in basis])
    for i in range(ell+1):
        print(f"gram = {gram[i]}")
        
    hij_tensor = np.array([[sp_local(op1, commutate(rho = op2, ham = H)) for op1 in basis]
                          for op2 in basis])
    
    for i in range(ell+1):
        print(f"hij = {hij_tensor[i]}")
        
    end = time.time()
    print(f"execution code = {end-start} s")
if __name__ == "__main__":
    main()