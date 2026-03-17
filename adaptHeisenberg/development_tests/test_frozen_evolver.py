import numpy as np

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver

# -----------------
# params
# -----------------
N = 10
ell = 5
m_small = 2


# -----------------
# build commutator backend
# -----------------
commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
    num_spins=N,
    m_small=m_small,
    h_body_max=2,
    real_only=True,
    recompile=True,
)

backend = SystemBackend(
    commutate=commutate,
    SystemSmall=SystemSmall,
    SystemBig=SystemBig,
    HamiltonADAA=HamiltonADAA,
    km_small=km_small,
    km_big=km_big,
    km_ham=km_ham,
)

# -----------------
# Hamiltonian: XY (+ optional tiny Jz for conditioning)
# -----------------
H = HamiltonADAA()
H.to_zero()
for j in range(N - 1):
    H.data["real"][km_ham.key2off((j, j + 1), "xx")] = 1.0
    H.data["real"][km_ham.key2off((j, j + 1), "yy")] = -1.0
    # optional: tiny Jz stabilizer
    H.data["real"][km_ham.key2off((j, j + 1), "zz")] = 1e-1

# -----------------
# sigma0 (example: all Z-polarized)
# -----------------
sigma0 = ProductState([.0, .0, 0.3807970779778825*2] * N) ### referential

# -----------------
# initial seed operator b0 = Z0 (SMALL)
# -----------------
b0 = SystemSmall()
b0.to_zero()
b0.data["real"][km_small.key2off((0,), "z")] = 1.0

# -----------------
# build evolver (frozen basis)
# -----------------
evolver = FrozenBasisEvolver(
    backend=backend,
    ham=H,
    sigma0=sigma0,
    m_small=m_small,
    ell=ell,
    exclude_scalar=False,
    pinv_rtol=1e-12,
).build(b0)

print("G55 from stored gram:", evolver.gram[-1,-1])
print("G55 from sp(b5,b5):", evolver.sp(evolver.basis[-1], evolver.basis[-1]))


print("gram = \n", evolver.gram)
print("hij = \n", evolver.Hij)

print("A = \n", evolver.solve_gram(evolver.Hij))