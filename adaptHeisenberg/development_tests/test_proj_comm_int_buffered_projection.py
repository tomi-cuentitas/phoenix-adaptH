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

import math
import numpy as np

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered


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


def project_big_to_small_product_state(src_big, dst_small, sigma0: ProductState, m: int, *, eps: float = 1e-14) -> None:
    """Test-only BIG->SMALL projection using ProductState.expect.

    Rule:
      - keep terms with body <= m
      - for a term with body > m, keep the first m operators and contract the rest using
        product-state expectations, i.e. multiply by <P_contract>_sigma0.

    This is not your full cumulant projection; it is a consistent, simple contraction
    that exercises the buffered workflow without requiring changes to projection.py yet.
    """
    src_km = type(src_big)._KEYMAP
    dst_km = type(dst_small)._KEYMAP

    dst_small.to_zero()

    for off in range(src_big.size):
        coeff = float(src_big.data["real"][off])
        if abs(coeff) <= eps:
            continue

        nums, word = src_km.off2key(off).labels
        nums = tuple(int(x) for x in nums)
        word = str(word)

        k = len(nums)
        if k == 0:
            # ignore scalar in this test
            continue

        if k <= m:
            dst_off = dst_km.key2off(nums, word)
            dst_small.data["real"][dst_off] += coeff
            continue

        keep_nums = nums[:m]
        keep_word = word[:m]
        contract_nums = nums[m:]
        contract_word = word[m:]

        # Build a full-length Pauli string for the contracted part only.
        P = ["I"] * sigma0.N
        for site, let in zip(contract_nums, contract_word):
            P[site] = let.upper()
        w = float(sigma0.expect("".join(P)))

        if abs(w) <= eps:
            continue

        dst_off = dst_km.key2off(keep_nums, keep_word)
        dst_small.data["real"][dst_off] += coeff * w


def main() -> None:
    N = 20
    m_small = 1         # SMALL cutoff (forces projection to do something)
    h_body_max = 2      # 2-body Hamiltonian => m_int = m_small + 1 = 2
    ell = 20

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
    for nums in [(0, 1), (1, 2), (2, 3)]:
        H.data["real"][km_ham.key2off(nums, "xx")] = 1.0

    # b0 = Z0 (SMALL)
    b = SystemSmall()
    b.to_zero()
    b.data["real"][km_small.key2off((0,), "z")] = 1.0

    # sigma0: choose <X1>=1 so contracting Y0X1 -> Y0 is nonzero.
    # ProductState expects a flat 3N vector: [x0,y0,z0, x1,y1,z1, ...]
    bloch = np.zeros(3 * N, dtype=float)
    bloch[0 * 3 + 0] = 1.0   # site 0: +X
    bloch[1 * 3 + 0] = 1.0   # site 1: +X
    bloch[2 * 3 + 0] = 1.0   # site 2: +X
    bloch[3 * 3 + 0] = 1.0   # site 3: +X
    sigma0 = ProductState(bloch)

    print()
    _print_nonzeros("b0 (SMALL)", b, N, km_small)
    print()

    for k in range(1, ell + 1):
        tmp_big = commutate(rho=b, ham=H)
        _print_nonzeros(f"tmp_big = [H, b{k-1}] (BIG)", tmp_big, N, km_big)

        b_next = SystemSmall()
        b_next.to_zero()
        project_big_to_small_product_state(tmp_big, b_next, sigma0, m=m_small)

        _print_nonzeros(f"b{k} = π_m(tmp_big) (SMALL)", b_next, N, km_small)
        print()
        b = b_next


if __name__ == "__main__":
    main()