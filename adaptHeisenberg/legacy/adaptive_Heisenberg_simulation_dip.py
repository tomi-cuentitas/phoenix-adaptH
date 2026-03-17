import numpy as np

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver

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
# params
# -----------------

N = 4                 # spins per side -> total spins L = N^2 (=16 if N=4)
a = 10.0               # lattice spacing
D = 1.0               # dipolar strength (tune to your convention; maybe D/4 if using S=σ/2)
include_offdiag = False  # True if you want the full dipolar tensor (needs "xy", "xz", ... support)

ell = 5
m_small = 3

p_tail = 2              # monitor last p coefficients
eps_tail = 1e-10         # trigger threshold on tail weight fraction

tmax = 10.
n_steps = 100
dt = tmax / n_steps
times = np.linspace(0.0, tmax, n_steps + 1)

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
# Hamiltonian: Dipolar 2D
# -----------------

import numpy as np

def site_id(x: int, y: int, N: int) -> int:
    # row-major: (0,0)->0, (1,0)->1, ..., (N-1,0)->N-1, (0,1)->N, ...
    return x + N * y

def build_positions_square_lattice(N: int, a: float = 1.0, z0: float = 0.0) -> np.ndarray:
    """
    Returns positions r_i in R^3 for an N x N square lattice (total L = N^2 spins).
    """
    L = N * N
    pos = np.zeros((L, 3), dtype=float)
    for y in range(N):
        for x in range(N):
            i = site_id(x, y, N)
            pos[i] = np.array([a * x, a * y, z0], dtype=float)
    return pos

def add_dipolar_pair_terms(
    H,
    km_ham,
    i: int,
    j: int,
    r_ij: np.ndarray,
    D: float = 1.0,
    include_offdiag: bool = False,
    r_min: float = 1e-12,
):
    """
    Adds dipolar interaction between spins i and j using the dipolar tensor
      J_{αβ}(r) = D / r^3 * (δ_{αβ} - 3 r̂_α r̂_β)
    so that
      H += sum_{αβ} J_{αβ} S_i^α S_j^β
    In Pauli conventions, if your Phoenix expects σασβ couplings, you may want to
    rescale D by 1/4 (since S = σ/2). Keep as-is and tune D to your convention.

    If include_offdiag=False: only writes xx, yy, zz (pure "XYZ" anisotropy).
    If include_offdiag=True: also tries to write xy,yx,xz,zx,yz,zy if your KeyMap supports them.
    """
    r = float(np.linalg.norm(r_ij))
    if r < r_min:
        return

    rhat = r_ij / r
    pref = D / (r ** 3)

    # Dipolar tensor J_{αβ}
    I = np.eye(3)
    J = pref * (I - 3.0 * np.outer(rhat, rhat))  # 3x3

    # Helper to set a term if Phoenix supports it
    def set_term(label: str, val: float):
        try:
            H.data["real"][km_ham.key2off((i, j), label)] = val
        except Exception:
            # If your KeyMap doesn't include this label, silently skip
            pass

    # Diagonal ("XYZ") terms always attempted
    set_term("xx", float(J[0, 0]))
    set_term("yy", float(J[1, 1]))
    set_term("zz", float(J[2, 2]))

    if include_offdiag:
        # Off-diagonal couplings: may be unsupported in your Phoenix basis
        set_term("xy", float(J[0, 1])); set_term("yx", float(J[1, 0]))
        set_term("xz", float(J[0, 2])); set_term("zx", float(J[2, 0]))
        set_term("yz", float(J[1, 2])); set_term("zy", float(J[2, 1]))


# -----------------------------
# 2D N x N (e.g. N=4 => 16 spins) all-to-all dipolar XYZ
# -----------------------------

L = N * N
pos = build_positions_square_lattice(N=N, a=a, z0=0.0)

H = HamiltonADAA()
H.to_zero()

# all-to-all pairs (i < j)
for i in range(L):
    for j in range(i + 1, L):
        r_ij = pos[i] - pos[j]
        add_dipolar_pair_terms(
            H=H,
            km_ham=km_ham,
            i=i,
            j=j,
            r_ij=r_ij,
            D=D,
            include_offdiag=include_offdiag,
        )


# -----------------
# sigma0 (example: all Z-polarized)
# -----------------
sigma0 = ProductState([.1, .1, .8] * N) ### referential

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

# initial coefficients in current basis: O(0)=b0
phi = np.zeros(len(evolver.basis))
phi[0] = 1.0

# monitor expectation of Z0 (same operator as b0 here)
#z0 = b0

# --- ADD: storage lists ---
times_list = []
obs_list = []
tail_list = []
rebuilt_list = []

print("t, <Z0>, tail_frac, rebuilt")
for t in times:
    O_ell_m_eps = evolver.assemble_operator(phi)
    ev = evolver.sp(O_ell_m_eps, b0) / 2.0

    frac = tail_weight_fraction(phi, p_tail)

    rebuilt = False
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
        rebuilt = True

        print(f"{t: .6f}, {ev: .12f}, {frac: .3e}, {rebuilt}")

    # --- ADD: append to lists ---
    times_list.append(float(t))
    obs_list.append(float(ev))
    tail_list.append(float(frac))
    rebuilt_list.append(bool(rebuilt))

    if t < tmax - 0.5 * dt:
        phi = evolver.step_rk4(phi, dt)

# -----------------
# export
# -----------------
run_id = make_run_id(
    ham="dip",
    N=N,
    ell=ell,
    m=m_small,
    eps=eps_tail,
    p_tail=p_tail,
    dt=dt,
    tmax=tmax,
    seed="Z0",
    sigma="global_Z",
)

meta = dict(
    ham="dip-smallZ",
    N=N,
    ell=ell,
    m_small=m_small,
    eps_tail=eps_tail,
    p_tail=p_tail,
    dt=dt,
    tmax=tmax,
    seed="Z0",
    sigma="global_Z",
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
