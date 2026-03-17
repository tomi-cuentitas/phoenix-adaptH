"""
Integration sanity test: commutator (Phoenix/Fortran) + projection (Python).

N = 4
m = 4 (projection = identity)
sigma0 = |ZZZZ>
b0 = Z0
H = X0X1 + X1X2 + X2X3
"""

from __future__ import annotations
import numpy as np

from phoenix.keymap import KeyMap
from phoenix.fgen.instructionvar import InstructionVariable
from phoenix.fgen.fortran_builder import F90Library
from phoenix.adaa_derived import FortranRA, STATUS_INPUT, STATUS_INOUT

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_system_adaa
from adaptHeisenberg.commutator_builder import build_commutator


# ---------------------------------------------------------------------
# KeyMap helpers 
# ---------------------------------------------------------------------

def ensure_subspace(parent: KeyMap, label) -> KeyMap:
    try:
        _, sub = parent.goto(label)
        return sub
    except KeyError:
        sub = KeyMap(name=f"sub_{label}")
        parent.link(label, sub)
        return sub


def ensure_leaf(parent: KeyMap, label) -> None:
    try:
        parent.goto(label)
    except KeyError:
        parent.entry(label)


# ---------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------

def main():

    N = 4
    MAX_SIZE = 4
    # ------------------------------------------------------------
    # System keymap
    # ------------------------------------------------------------
    system_keymap = KeyMap(name="system")
    # ------------------------------------------------------------
    # Hamiltonian keymap
    # ------------------------------------------------------------
    hamilton_keymap = KeyMap(name="ham")

    for nums in [(0, 1), (1, 2), (2, 3)]:
        sub = ensure_subspace(hamilton_keymap, nums)
        ensure_leaf(sub, "zz")

    # ------------------------------------------------------------
    # ADAA types
    # ------------------------------------------------------------
    System_ADAA = FortranRA.set_keymap(system_keymap)
    Hamilton_ADAA = FortranRA.set_keymap(hamilton_keymap)

    # ------------------------------------------------------------
    # Build commutator
    # ------------------------------------------------------------
    VarRho = InstructionVariable.new(name="rho", config=system_keymap)
    VarRes = InstructionVariable.new(name="res", config=system_keymap)
    VarHam = InstructionVariable.new(name="ham", config=hamilton_keymap)

    lib = F90Library("pauli_library_comm_small")

    daa_assignments = {
        VarRho: (System_ADAA, STATUS_INPUT),
        VarRes: (System_ADAA, STATUS_INOUT),
        VarHam: (Hamilton_ADAA, STATUS_INPUT),
    }
    
    
    
    commutate, System_ADAA, Hamilton_ADAA, system_keymap, hamilton_keymap = build_commutator(
        num_spins=N,
        max_size=MAX_SIZE,
        real_only=True,
        lib_basename=f"pauli_library_comm_N{N}_m{MAX_SIZE}",
        py_module_name=f"ecplib_comm_N{N}_m{MAX_SIZE}",
        recompile=True,
    )

    
    expected = sum(__import__("math").comb(N, k) * (3**k) for k in range(0, min(N, MAX_SIZE) + 1))
    print("Expected system size =", expected)
    print("System_ADAA.size =", System_ADAA().size)
    assert System_ADAA().size == expected, "System keymap size mismatch (wrong N/max_size or scalar missing)"

    tmp = System_ADAA()
    tmp.to_zero()
    
    print("System_ADAA.size =", System_ADAA().size)
    print("tmp.size =", tmp.size)



    # ------------------------------------------------------------
    # Hamiltonian
    # ------------------------------------------------------------
    H = Hamilton_ADAA()
    H.to_zero()
    for nums in [(0, 1), (1, 2), (2, 3)]:
        H.data["real"][hamilton_keymap.key2off(nums, "xx")] = 1.0

    # ------------------------------------------------------------
    # b0 = Z0
    # ------------------------------------------------------------
    b = System_ADAA()
    b.to_zero()
    b.data["real"][system_keymap.key2off((0,), "z")] = 1.0


    # ------------------------------------------------------------
    # sigma0 = |ZZZZ>
    # ------------------------------------------------------------
    vecs = np.zeros((N, 3))
    vecs[:, 1] = 1.0
    sigma0 = ProductState(vecs)

    # ------------------------------------------------------------
    # One projected commutator step
    # ------------------------------------------------------------
    print(commutate.__doc__)

    tmp = commutate(rho=b, ham=H)          # tmp is the commutator result (returned)
    b1  = System_ADAA(); b1.to_zero()      # destination for projection

    project_system_adaa(tmp, b1, sigma0, m=MAX_SIZE, exclude_scalar=True)


    # ------------------------------------------------------------
    # Print result
    # ------------------------------------------------------------
    print("b1 = π([H, Z0])")
    for i in range(b1.size):
        v = b1.data["real"][i]
        if abs(v) > 1e-12:
            nums, word = system_keymap.off2key(i).labels
            full = ["I"] * N
            for s, w in zip(nums, word):
                full[s] = w.upper()
            print(" ", "".join(full), v)
            
    tmp1 = commutate(rho = b1, ham=H)
    b2= System_ADAA(); b2.to_zero()
    
    project_system_adaa(tmp1, b2, sigma0, m= MAX_SIZE, exclude_scalar=True)
    
    print("b2 = π([H, π[H,Z0]])")
    for i in range(b1.size):
        v = b2.data["real"][i]
        if abs(v) > 1e-12:
            nums, word = system_keymap.off2key(i).labels
            full = ["I"] * N
            for s, w in zip(nums, word):
                full[s] = w.upper()
            print(" ", "".join(full), v)
            
    tmp2 = commutate(rho = b2, ham=H)
    b3= System_ADAA(); b3.to_zero()
    
    project_system_adaa(tmp2, b3, sigma0, m= MAX_SIZE, exclude_scalar=True)
    
    print("b3 = π([H, π([H, π[H,Z0]])])")
    for i in range(b2.size):
        v = b3.data["real"][i]
        if abs(v) > 1e-12:
            nums, word = system_keymap.off2key(i).labels
            full = ["I"] * N
            for s, w in zip(nums, word):
                full[s] = w.upper()
            print(" ", "".join(full), v)
    
    
if __name__ == "__main__":
    main()
