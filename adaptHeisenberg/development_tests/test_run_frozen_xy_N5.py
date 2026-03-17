import numpy as np
import scipy.linalg as la

from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.projection import project_system_adaa_between
from adaptHeisenberg.covariance_scalar_product import (
    fetch_covar_scalar_product,
    gram_matrix,
)

# ------------------------------------------------------------
# Parameters
# ------------------------------------------------------------
N = 5
m_small = 2          
ell = 5           # Krylov depth
dt = 0.1
n_steps = 10

# ------------------------------------------------------------
# Build commutator backend (ONCE)
# ------------------------------------------------------------
commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
    num_spins=N,
    m_small=m_small,
    h_body_max=2,  # XY is 2-body
    real_only=True,
    lib_basename=f"pauli_comm_buf_N{N}_m{m_small}",
    py_module_name=f"ecplib_buf_N{N}_m{m_small}",
    recompile=True,  # set False once cached
)

# ------------------------------------------------------------
# Hamiltonian: XY = sum_j (X_j X_{j+1} + Y_j Y_{j+1})
# ------------------------------------------------------------
H = HamiltonADAA()
H.to_zero()

for j in range(N - 1):
    nums = (j, j+1)
    H.data["real"][km_ham.key2off(nums, "xx")] = 1.0
    H.data["real"][km_ham.key2off(nums, "yy")] = -1.0
    H.data["real"][km_ham.key2off(nums, "zz")] = -1e-1


# ------------------------------------------------------------
# Reference state sigma0: Z-polarized product state
# ------------------------------------------------------------
# vectors = [mx0, my0, mz0, mx1, my1, mz1, ...]
sigma0 =  ProductState(
    sum(([.0, .0, .3807970779778825 * 2]for _ in range(N)), []))

sp = fetch_covar_scalar_product(sigma0)

# ------------------------------------------------------------
# Initial observable: Z0 (projected to SMALL space)
# ------------------------------------------------------------
b0 = SystemSmall()
b0.to_zero()
b0.data["real"][km_small.key2off((0,), "z")] = 1.0
# ------------------------------------------------------------
# Build projected Krylov basis
# ------------------------------------------------------------
basis = [b0.copy()]

for _ in range(ell):    
    big = commutate(rho=basis[-1], ham=H)
    nxt = SystemSmall()
    nxt.to_zero()
    project_system_adaa_between(
        big,
        nxt,
        sigma0,
        m_small,
        exclude_scalar=False,
        eps=1e-14,
    )
     
    basis.append(nxt)

print(f"Built basis of size {len(basis)}")
print("sp(b0,b0) =", sp(b0, b0))
print("sp(b0,b1) =", sp(b0, basis[1]))
print("sp(b1,b1) =", sp(basis[1], basis[1]))

# ------------------------------------------------------------
# Geometry: Gram + Hij
# ------------------------------------------------------------
gram = gram_matrix(basis, sigma0, sp=sp)

print("gram")
for _ in range(ell+1):
    print(gram[_])
    
L = np.linalg.cholesky(gram)
R = L.T
T = np.linalg.inv(R).T
    
# Hij_ij = (b_i, [H, b_j])_cov
n = len(basis)
Hij_non_orth = np.zeros((n, n))

for j in range(n):
    big = commutate(rho=basis[j], ham=H)
    tmp = SystemSmall()
    tmp.to_zero()
    project_system_adaa_between(
        big,
        tmp,
        sigma0,
        m_small,
        exclude_scalar=False,
        eps=1e-14,
    )
    for i in range(n):
        Hij_non_orth[i, j] = sp(basis[i], tmp)

Hij = T @ Hij_non_orth @ T.T


print("Hij_orth")
for _ in range(ell+1):
    print(Hij[_])

# ------------------------------------------------------------
# Initial coefficients: phi(0) = (1, 0, 0, ...)
# ------------------------------------------------------------
phi_orth = np.zeros(n)
phi_orth[0] = 1.0 
phi = phi_orth

# ------------------------------------------------------------
# Time evolution (frozen basis)
# ------------------------------------------------------------

print("\nTime evolution of <Z0>(t):")
for step in range(n_steps):
   
    t = step * dt

    # reconstruct operator
    O = SystemSmall()
    O.to_zero()
    for c, b in zip(phi, basis):
        if c != 0.0:
            O = O + (b * float(c))

    # expectation value <Z0>(t)
    
    exp_Z0 = sp(O, b0)/2
    print(f"t = {t:6.3f}   <Z0> = {exp_Z0: .6f}")

    # evolve coefficients exactly (small system)
    phi_orth = la.expm(dt * Hij) @ phi_orth
    phi = T.T @ phi_orth