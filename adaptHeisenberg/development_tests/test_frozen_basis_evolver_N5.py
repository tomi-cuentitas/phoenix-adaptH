# adaptHeisenberg/development_tests/run_minimal_frozen_evolver_xy_N5.py
import scipy.linalg as linalg
import numpy as np

from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver

# -----------------
# params
# -----------------
N = 5
m_small = 3
ell = 3
dt = 0.111
n_steps = 10

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
# Hamiltonian: XY = sum (XX + YY)
# -----------------
H = HamiltonADAA()
H.to_zero()
for j in range(N - 1):
    H.data["real"][km_ham.key2off((j, j + 1), "xx")] = 1.0
    H.data["real"][km_ham.key2off((j, j + 1), "yy")] = -1.0
    H.data["real"][km_ham.key2off((j, j + 1), "zz")] = -.1

# -----------------
# sigma0: example (site 0 polarized, rest mixed)
# -----------------
vec = [0.0, 0.0, 1.0]*N
sigma0 = ProductState(vec)

# -----------------
# seed operator b0 = Z0 (SMALL)
# -----------------
b0 = SystemSmall()
b0.to_zero()
b0.data["real"][km_small.key2off((0,), "z")] = 1.0

# -----------------
# build evolver
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

# coefficients in the frozen basis
phi = np.zeros(len(evolver.basis))
phi[0] = 1.0

print("sp(b0,b0) =", evolver.sp(b0, b0))
print("gram:\n", evolver.gram)
print("Hij:\n", evolver.Hij)

print("G+ @ H: \n", evolver.generator_A())

print("\nTime evolution of <Z0>(t):")
for k in range(n_steps):
    t = k * dt
    O = evolver.assemble_operator(phi)
    # expectation of Z0 under the approximated operator dynamics:
    ev = evolver.sp(O, b0)/2
    print(f"t = {t:6.3f}  <Z0> = {ev: .6f}")
    #phi = evolver.step_expm(phi, dt)
    phi = evolver.step_rk4(phi, dt)
    