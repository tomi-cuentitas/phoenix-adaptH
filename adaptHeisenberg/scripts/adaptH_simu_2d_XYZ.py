import scipy.linalg as linalg
import numpy as np

from phoenix.lattice import all_pairs_within_range
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver
from adaptHeisenberg.covariance_scalar_product import fetch_covar_scalar_product


from adaptHeisenberg.io_runlog import make_run_id, export_run

def tail_weight_fraction(phi: np.ndarray, p: int) -> float:
    """ sum_{last p} |phi|^2 / sum_all |phi|^2 """
    if p <= 0:
        return 0.0
    denom = float(np.sum(np.abs(phi) ** 2))
    if denom == 0.0:
        return 0.0
    p = min(p, len(phi))
    numer = float(np.sum(np.abs(phi[-p:]) ** 2))
    return numer / denom


# -----------------
# simu params and lattice params
# -----------------
ell = 5; m_small = 2; p_tail = 2              # monitor last p coefficients
eps_tail = 1e-10        # trigger threshold on tail weight fraction

tmax = 1.
n_steps = 100
dt = tmax / n_steps
times = np.linspace(0.0, tmax, n_steps + 1)

Lx, Ly = 8,8
N = Lx * Ly
LATTICE_SHAPE = (Lx, Ly)
EXPLORE_LATTICE_SHAPE = (min(Lx, 3), min(Ly, 3))
ZETA = 1
PERIODIC = False

# -----------------
# build commutator backend with lattice information
# -----------------
commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
    num_spins=N,
    m_small=m_small,
    lattice_shape=LATTICE_SHAPE,
    explore_lattice_shape=EXPLORE_LATTICE_SHAPE,
    zeta=ZETA,
    periodic=PERIODIC,
    real_only=True,
    recompile=True,
)

# -----------------
# sigma0 (example: all Z-polarized)
# -----------------
sigma0 = ProductState([.0, .0, .99] * N) ### referential

Id = SystemSmall()
Id.to_zero()
Id.data["real"][km_small.key2off((), "")] = 1.0


# -----------------
# Reference state (example: coincides with sigma0)
# -----------------

sigma_ref = sigma0 #ProductState([.0, .0, .0] * N) ### referential

comm_raw = commutate

def commutate_zeroed(*, rho, ham):
    res = SystemBig()
    res.to_zero()

    try:
        out = comm_raw(rho=rho, ham=ham, res=res)
    except TypeError:
        # comm_raw doesn't accept res= at all
        return comm_raw(rho=rho, ham=ham)

    # If the wrapper returns an object, use it.
    # If it returns None, it likely wrote into `res`.
    return res if out is None else out


backend = SystemBackend(
    commutate=commutate_zeroed,
    SystemSmall=SystemSmall,
    SystemBig=SystemBig,
    HamiltonADAA=HamiltonADAA,
    km_small=km_small,
    km_big=km_big,
    km_ham=km_ham,
)

# Build ONE scalar product callable (works for both SystemSmall and SystemBig)
caches = None  # or CovarCaches.empty() if you want explicit
term_cache = None
sp_ev = fetch_covar_scalar_product(sigma0, eps=1e-12, caches=caches, term_cache=term_cache)
sp = fetch_covar_scalar_product(sigma_ref, eps=1e-12, caches=caches, term_cache=term_cache)

def expect_operator_sigma0(sigma0, O, *, eps=0.0, real_only=True) -> float:
    """
    Compute Tr(sigma0 O) for an ADAA operator O represented as a sum of Pauli terms.

    sigma0: ProductState
    O: SystemSmall_ADAA or SystemBig_ADAA (must have .data["real"] and type(O)._KEYMAP)
    """
    km = type(O)._KEYMAP
    arr = O.data["real"]
    nz = np.flatnonzero(np.abs(arr) > eps)

    out = 0.0
    for off in nz:
        coeff = float(arr[off])
        nums, word = km.off2key(int(off)).labels   # (nums_tuple, reduced_word)
        out += coeff * sigma0.expect_reduced(tuple(nums), str(word))

    if not real_only:
        arr_im = O.data.get("imag", None)
        if arr_im is not None:
            nz_im = np.flatnonzero(np.abs(arr_im) > eps)
            for off in nz_im:
                coeff_im = float(arr_im[off])
                nums, word = km.off2key(int(off)).labels
                # expectation of Pauli term is real for ProductState; imag coeff contributes imag part
                # return only real part here; ignore imag or handle separately if needed
                # out += 1j * coeff_im * sigma0.expect_reduced(...)
                pass

    return float(out)

# -----------------
# Hamiltonian: XY (+ optional tiny Jz for conditioning)
# -----------------
H = HamiltonADAA()
H.to_zero()

for i, j in all_pairs_within_range(LATTICE_SHAPE, ZETA, periodic=PERIODIC):
    H.data["real"][km_ham.key2off((i, j), "xx")] = 1.0
    H.data["real"][km_ham.key2off((i, j), "yy")] = -1.0
    H.data["real"][km_ham.key2off((i, j), "zz")] = 2.5e-1

# -----------------
# initial seed operator b0 = Z0 (SMALL)
# -----------------
b0 = SystemSmall()
b0.to_zero()
b0.data["real"][km_small.key2off((0,), "z")] = 1

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

# initial coefficients in current basis: O(0)=b0
phi = np.zeros(len(evolver.basis))
phi[0] = 1.0

# --- ADD: storage lists ---
times_list = []
obs_list = []
tail_list = []
rebuilt_list = []

print("Tr(sigma0 I) should be 1 ->", expect_operator_sigma0(sigma0, Id))
print("<Z0> in sigma0 should be 0.85 ->", sigma0.expect_reduced((0,), "z"))

print("t, <Z0>, tail_frac, rebuilt")
for t in times:
    O_ell_m_eps = evolver.assemble_operator(phi)
    ev = expect_operator_sigma0(sigma0, O_ell_m_eps, eps=1e-15)

    frac = tail_weight_fraction(phi, p_tail)
    
    rebuilt = False
    
    print(f"{t: .6f}, {ev: .12f}, {frac: .3e}, {rebuilt}")
    
    if frac >= eps_tail:
        evolver = FrozenBasisEvolver(
            backend=backend,
            ham=H,
            sigma0=sigma0,
            m_small=m_small,
            ell=ell,
            exclude_scalar=False,
            pinv_rtol=1e-12,
        ).build(O_ell_m_eps)
    
        phi = evolver.project_operator(O_ell_m_eps)
       
        # sanity: (b0', b0') should match (O,O) up to eps
        b0p = evolver.basis[0]
        n0 = evolver.sp(b0p, b0p)
        nO = evolver.sp(O_ell_m_eps, O_ell_m_eps)
        if abs(n0 - nO) > 1e-8 * max(1.0, abs(nO)):
            print("WARNING: seed operator changed on rebuild (copy/eps mismatch?)", n0, nO)
        

        rebuilt = True

        print(f"{t: .6f}, {ev: .12f}, {frac: .3e}, {rebuilt}")

    # --- ADD: append to lists ---
    times_list.append(float(t))
    obs_list.append(float(ev))
    tail_list.append(float(frac))
    rebuilt_list.append(bool(rebuilt))

    if t < tmax - 0.5 * dt:
        phi = evolver.step_expm(phi, dt)  ## or step_rk4 for runge-kutta order-4 solver
        phi_new = phi 
        G = evolver.gram
        normG = phi_new @ (G @ phi_new)

        if normG > 1e-14:
            phi_new /= np.sqrt(normG)

        phi = phi_new

# -----------------
# export
# -----------------
run_id = make_run_id(
    ham="XYZ",
    N=N,
    ell=ell,
    m=m_small,
    eps=eps_tail,
    p_tail=p_tail,
    dt=dt,
    tmax=tmax,
    seed="Z0",
    sigma="_globalZ",
)

meta = dict(
    ham="XY-smallZ",
    N=N,
    ell=ell,
    m_small=m_small,
    eps_tail=eps_tail,
    p_tail=p_tail,
    dt=dt,
    tmax=tmax,
    seed="Z0",
    sigma="_globalZ",
)

run_path = export_run(
    out_dir="data",
    run_id=run_id,
    meta=meta,
    times=np.array(times_list, dtype=float),
    obs=np.array(obs_list, dtype=float),
    tail_frac=np.array(tail_list, dtype=float),
    rebuilt=np.array(rebuilt_list, dtype=bool),
    phi_last=np.array(phi, dtype=float),
)

print("Saved run to:", run_path)
