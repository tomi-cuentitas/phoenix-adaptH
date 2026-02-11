import time
from collections import defaultdict

import numpy as np

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver

from adaptHeisenberg.io_runlog import make_run_id, export_run

# File: adaptive_Heisenberg_simulation-timestamps.py :contentReference[oaicite:0]{index=0}


# -----------------
# timing helpers
# -----------------
timers = defaultdict(float)
counts = defaultdict(int)

class Timer:
    def __init__(self, key: str):
        self.key = key
        self.t0 = None

    def __enter__(self):
        self.t0 = time.perf_counter()

    def __exit__(self, exc_type, exc, tb):
        dt = time.perf_counter() - self.t0
        timers[self.key] += dt
        counts[self.key] += 1


def print_timing_report():
    print("\n=== Timing breakdown ===")
    total = sum(timers.values())
    if total <= 0:
        print("No timings recorded.")
        return

    for k in sorted(timers, key=lambda x: timers[x], reverse=True):
        t = timers[k]
        c = counts[k]
        avg = (t / c) if c else float("nan")
        print(f"{k:22s}: {t:10.3f} s | {c:6d} calls | avg {avg:10.3e} s | {100.0*t/total:6.2f}%")

    print(f"{'TOTAL':22s}: {total:10.3f} s")


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
N = 10
ell = 5
m_small = 3

p_tail = 2              # monitor last p coefficients
eps_tail = 1e-10         # trigger threshold on tail weight fraction

tmax = .25
n_steps = 50
dt = tmax / n_steps
times = np.linspace(0.0, tmax, n_steps + 1)

# -----------------
# build commutator backend
# -----------------
with Timer("build_commutator_backend"):
    commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
        num_spins=N,
        m_small=m_small,
        h_body_max=2,
        real_only=True,
        recompile=False,
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
sigma0 = ProductState([.0, .0, 1.] * N)

# -----------------
# initial seed operator b0 = Z0 (SMALL)
# -----------------
b0 = SystemSmall()
b0.to_zero()
b0.data["real"][km_small.key2off((0,), "z")] = 1.0

# -----------------
# build evolver (frozen basis)
# -----------------
with Timer("build_basis"):
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
z0 = b0

# --- storage lists ---
times_list = []
obs_list = []
tail_list = []
rebuilt_list = []

print("t, <Z0>, tail_frac, rebuilt")

for t in times:
    # 1) assemble operator O(phi)
    with Timer("assemble_operator"):
        O_ell_m_eps = evolver.assemble_operator(phi)

    # 2) expectation value sp(O, z0)
    with Timer("sp_expectation"):
        ev = evolver.sp(O_ell_m_eps, z0) / 2.0

    # (tail monitor is cheap but we time it anyway)
    with Timer("tail_weight_fraction"):
        frac = tail_weight_fraction(phi, p_tail)

    rebuilt = False
    if frac >= eps_tail:
        # 3) rebuild basis around current operator
        with Timer("build_basis"):
            evolver = FrozenBasisEvolver(
                backend=backend,
                ham=H,
                sigma0=sigma0,
                m_small=m_small,
                ell=ell,
                exclude_scalar=False,
                pinv_rtol=1e-12,
            ).build(O_ell_m_eps)

        # 4) project operator into the new basis
        with Timer("project_operator"):
            phi = evolver.project_operator(O_ell_m_eps)

        rebuilt = True
        print(f"{t: .6f}, {ev: .12f}, {frac: .3e}, {rebuilt}")

    # --- append to lists ---
    times_list.append(float(t))
    obs_list.append(float(ev))
    tail_list.append(float(frac))
    rebuilt_list.append(bool(rebuilt))

    # 5) time step (only if not last step)
    if t < tmax - 0.5 * dt:
        with Timer("step_expm"):
            phi = evolver.step_expm(phi, dt)

# -----------------
# export
# -----------------
if False:
    run_id = make_run_id(
        ham="XY",
        N=N,
        ell=ell,
        m=m_small,
        eps=eps_tail,
        p_tail=p_tail,
        dt=dt,
        tmax=tmax,
        seed="Z0",
        sigma="Z0",
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
        sigma="Z0",
    )

    with Timer("export_run"):
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

# -----------------
# timing report
# -----------------
print_timing_report()
