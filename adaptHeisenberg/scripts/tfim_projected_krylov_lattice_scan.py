import argparse
import csv
import json
import os
from pathlib import Path
from typing import Iterable, Tuple

import numpy as np

from phoenix.lattice import all_pairs_within_range
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered
from adaptHeisenberg.evolution import SystemBackend, FrozenBasisEvolver


def tail_weight_fraction(phi: np.ndarray, p: int) -> float:
    """sum of last p coefficient weights divided by total weight"""
    if p <= 0:
        return 0.0
    denom = float(np.sum(np.abs(phi) ** 2))
    if denom == 0.0:
        return 0.0
    p = min(p, len(phi))
    numer = float(np.sum(np.abs(phi[-p:]) ** 2))
    return numer / denom


def count_nonzero_pauli_terms(adaa, eps: float = 1e-12) -> int:
    """Count nonzero real/imag Pauli monomials in an ADAA object."""
    total = 0
    seen = set()

    for field in ("real", "imag"):
        arr = adaa.data.get(field, None)
        if arr is None:
            continue
        nz = np.flatnonzero(np.abs(arr) > eps)
        for off in nz:
            seen.add(int(off))

    total = len(seen)
    return total


def pauli_string_from_offset(off: int, keymap, N: int) -> str:
    nums, word = keymap.off2key(int(off)).labels
    full = ["I"] * N
    for s, w in zip(nums, word):
        full[int(s)] = str(w).upper()
    return "".join(full)


class SafeCSVLogger:
    def __init__(self, path: Path, header: Iterable[str]):
        self.path = Path(path)
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self._fh = open(self.path, "a", newline="", buffering=1)
        self._writer = csv.writer(self._fh)
        if self.path.stat().st_size == 0:
            self._writer.writerow(list(header))
            self._flush()

    def write_row(self, *row):
        self._writer.writerow(row)
        self._flush()

    def _flush(self):
        self._fh.flush()
        os.fsync(self._fh.fileno())

    def close(self):
        try:
            self._flush()
        finally:
            self._fh.close()


class SafeJSONLLogger:
    def __init__(self, path: Path):
        self.path = Path(path)
        self.path.parent.mkdir(parents=True, exist_ok=True)
        self._fh = open(self.path, "a", buffering=1)

    def write_obj(self, obj):
        self._fh.write(json.dumps(obj, ensure_ascii=False) + "\n")
        self._fh.flush()
        os.fsync(self._fh.fileno())

    def close(self):
        self._fh.flush()
        os.fsync(self._fh.fileno())
        self._fh.close()


def commutate_zeroed_factory(comm_raw, SystemBig):
    def commutate_zeroed(*, rho, ham):
        res = SystemBig()
        res.to_zero()
        try:
            out = comm_raw(rho=rho, ham=ham, res=res)
        except TypeError:
            return comm_raw(rho=rho, ham=ham)
        return res if out is None else out

    return commutate_zeroed



def expect_operator_sigma0(sigma0, O, *, eps: float = 0.0) -> float:
    km = type(O)._KEYMAP
    out = 0.0

    arr = O.data.get("real", None)
    if arr is not None:
        nz = np.flatnonzero(np.abs(arr) > eps)
        for off in nz:
            coeff = float(arr[off])
            nums, word = km.off2key(int(off)).labels
            out += coeff * sigma0.expect_reduced(tuple(nums), str(word))

    return float(out)



def make_seed_operator(SystemSmall, km_small, site: int, axis: str = "z"):
    b0 = SystemSmall()
    b0.to_zero()
    b0.data["real"][km_small.key2off((site,), axis.lower())] = 1.0
    return b0



def build_tfim_hamiltonian(HamiltonADAA, 
                           km_ham, 
                           lattice_shape: Tuple[int, ...], *, 
                           Jzz: float, hx: float, zeta: int, periodic: bool):
    H = HamiltonADAA()
    H.to_zero()

    for i, j in all_pairs_within_range(lattice_shape, zeta, periodic=periodic):
        H.data["real"][km_ham.key2off((i, j), "zz")] = float(Jzz)

    n_sites = int(np.prod(lattice_shape))
    for i in range(n_sites):
        H.data["real"][km_ham.key2off((i,), "x")] = float(hx)

    return H



def dump_basis_stats(logger: SafeCSVLogger, basis, rebuild_id: int, t: float, eps: float = 1e-12):
    for bi, op in enumerate(basis):
        nnz = count_nonzero_pauli_terms(op, eps=eps)
        logger.write_row(rebuild_id, f"{t:.16e}", bi, nnz)



def dump_basis_snapshot_jsonl(logger: SafeJSONLLogger, basis, rebuild_id: int, t: float, keymap, N: int, max_terms_per_bi: int = 0, eps: float = 1e-12):
    if max_terms_per_bi <= 0:
        return

    for bi, op in enumerate(basis):
        payload = {
            "rebuild_id": rebuild_id,
            "time": float(t),
            "basis_index": bi,
            "nnz": count_nonzero_pauli_terms(op, eps=eps),
            "terms": [],
        }
        arr = op.data.get("real", None)
        if arr is not None:
            nz = np.flatnonzero(np.abs(arr) > eps)
            values = [(int(off), float(arr[off])) for off in nz]
            values.sort(key=lambda x: -abs(x[1]))
            for off, coeff in values[:max_terms_per_bi]:
                payload["terms"].append({
                    "pauli": pauli_string_from_offset(off, keymap, N),
                    "coeff_real": coeff,
                })
        logger.write_obj(payload)



def parse_args():
    p = argparse.ArgumentParser(description="Projected-Krylov TFIM simulation on 2D/3D lattices with safe incremental logging.")
    p.add_argument("--phoenix-root", type=str, default=None)
    p.add_argument("--out-dir", type=str, required=True)
    p.add_argument("--shape", type=str, required=True, help="Comma-separated lattice shape, e.g. 10,10 or 5,5,4")
    p.add_argument("--explore-shape", type=str, default=None, help="Comma-separated explore shape. If omitted, uses capped local box.")
    p.add_argument("--periodic", action="store_true")
    p.add_argument("--zeta", type=int, default=1)
    p.add_argument("--m", type=int, default=2)
    p.add_argument("--ell", type=int, default=5)
    p.add_argument("--site", type=int, default=0)
    p.add_argument("--seed-axis", type=str, default="z")
    p.add_argument("--Jzz", type=float, default=1.0)
    p.add_argument("--hx", type=float, default=1.0)
    p.add_argument("--sigma-obs-z", type=float, default=0.99)
    p.add_argument("--tmax", type=float, default=1.0)
    p.add_argument("--n-steps", type=int, default=100)
    p.add_argument("--p-tail", type=int, default=2)
    p.add_argument("--eps-tail", type=float, default=1e-10)
    p.add_argument("--pinv-rtol", type=float, default=1e-12)
    p.add_argument("--count-eps", type=float, default=1e-12)
    p.add_argument("--expect-eps", type=float, default=1e-15)
    p.add_argument("--recompile", action="store_true")
    p.add_argument("--exclude-scalar", action="store_true")
    p.add_argument("--stepper", choices=["expm", "rk4"], default="expm")
    p.add_argument("--max-terms-per-bi", type=int, default=0, help="If >0, also dump a JSONL basis snapshot with the largest terms of each bi at each rebuild.")
    return p.parse_args()

def default_explore_shape(shape: Tuple[int, ...]) -> Tuple[int, ...]:
    if len(shape) == 2:
        Lx, Ly = shape
        return (min(Lx, 3), min(Ly, 3))
    if len(shape) == 3:
        Lx, Ly, Lz = shape
        return (min(Lx, 3), min(Ly, 3), min(Lz, 3))
    raise ValueError(f"Unsupported lattice rank: {len(shape)}")

def main():
    args = parse_args()

    lattice_shape = tuple(int(x) for x in args.shape.split(",") if x.strip())
    if len(lattice_shape) not in (2, 3):
        raise ValueError("--shape must have length 2 or 3")

    explore_shape = (
        tuple(int(x) for x in args.explore_shape.split(",") if x.strip())
        if args.explore_shape is not None
        else default_explore_shape(lattice_shape)
    )

    if len(explore_shape) != len(lattice_shape):
        raise ValueError("--explore-shape must have the same rank as --shape")

    N = int(np.prod(lattice_shape))
    dt = args.tmax / args.n_steps
    times = np.linspace(0.0, args.tmax, args.n_steps + 1)

    out_dir = Path(args.out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    with open(out_dir / "meta.json", "w") as fh:
        json.dump(
            {
                "model": "TFIM",
                "hamiltonian": {"Jzz": args.Jzz, "hx": args.hx},
                "lattice_shape": lattice_shape,
                "explore_shape": explore_shape,
                "N": N,
                "zeta": args.zeta,
                "periodic": args.periodic,
                "m": args.m,
                "ell": args.ell,
                "site": args.site,
                "seed_axis": args.seed_axis,
                "sigma_obs_z": args.sigma_obs_z,
                "tmax": args.tmax,
                "n_steps": args.n_steps,
                "dt": dt,
                "p_tail": args.p_tail,
                "eps_tail": args.eps_tail,
                "pinv_rtol": args.pinv_rtol,
                "count_eps": args.count_eps,
                "expect_eps": args.expect_eps,
                "stepper": args.stepper,
                "exclude_scalar": args.exclude_scalar,
                "recompile": args.recompile,
            },
            fh,
            indent=2,
        )

    obs_logger = SafeCSVLogger(out_dir / "expectation.csv", ["t", "expect_z_site", "tail_frac", "rebuilt", "rebuild_id", "basis_dim"])
    tail_logger = SafeCSVLogger(out_dir / "tail_rebuilds.csv", ["t", "tail_frac", "triggered", "rebuild_id", "phi_norm2", "basis_dim"])
    basis_logger = SafeCSVLogger(out_dir / "basis_nnz.csv", ["rebuild_id", "t", "basis_index", "nnz_terms"])
    basis_terms_logger = SafeJSONLLogger(out_dir / "basis_terms.jsonl") if args.max_terms_per_bi > 0 else None

    try:
        commutate, SystemSmall, SystemBig, HamiltonADAA, km_small, km_big, km_ham = build_commutator_buffered(
            num_spins=N,
            m_small=args.m,
            lattice_shape=lattice_shape,
            explore_lattice_shape=explore_shape,
            zeta=args.zeta,
            periodic=args.periodic,
            real_only=True,
            recompile=args.recompile,
        )

        backend = SystemBackend(
            commutate=commutate_zeroed_factory(commutate, SystemBig),
            SystemSmall=SystemSmall,
            SystemBig=SystemBig,
            HamiltonADAA=HamiltonADAA,
            km_small=km_small,
            km_big=km_big,
            km_ham=km_ham,
        )

        sigma0 = ProductState([0.0, 0.0, args.sigma_obs_z] * N)
        H = build_tfim_hamiltonian(
            HamiltonADAA,
            km_ham,
            lattice_shape,
            Jzz=args.Jzz,
            hx=args.hx,
            zeta=args.zeta,
            periodic=args.periodic,
        )
        b0 = make_seed_operator(SystemSmall, km_small, args.site, axis=args.seed_axis)

        evolver = FrozenBasisEvolver(
            backend=backend,
            ham=H,
            sigma0=sigma0,
            m_small=args.m,
            ell=args.ell,
            exclude_scalar=args.exclude_scalar,
            pinv_rtol=args.pinv_rtol,
        ).build(b0)

        phi = np.zeros(len(evolver.basis), dtype=float)
        phi[0] = 1.0
        rebuild_id = 0

        dump_basis_stats(basis_logger, evolver.basis, rebuild_id, times[0], eps=args.count_eps)
        if basis_terms_logger is not None:
            dump_basis_snapshot_jsonl(basis_terms_logger,
                                      evolver.basis, rebuild_id, 
                                      times[0], km_small, N, args.max_terms_per_bi, 
                                      eps=args.count_eps)

        print(f"N={N}, shape={lattice_shape}, explore_shape={explore_shape}, m={args.m}, ell={args.ell}")
        print("t, <O>, tail_frac, rebuilt, rebuild_id, basis_dim")

        for step_idx, t in enumerate(times):
            O_curr = evolver.assemble_operator(phi)
            ev = expect_operator_sigma0(sigma0, O_curr, eps=args.expect_eps)
            frac = tail_weight_fraction(phi, args.p_tail)
            rebuilt = False
            phi_norm2 = float(np.sum(np.abs(phi) ** 2))
            basis_dim = len(evolver.basis)

            if frac >= args.eps_tail:
                evolver = FrozenBasisEvolver(
                    backend=backend,
                    ham=H,
                    sigma0=sigma0,
                    m_small=args.m,
                    ell=args.ell,
                    exclude_scalar=args.exclude_scalar,
                    pinv_rtol=args.pinv_rtol,
                ).build(O_curr)

                phi = evolver.project_operator(O_curr)
                rebuild_id += 1
                rebuilt = True
                basis_dim = len(evolver.basis)

                dump_basis_stats(basis_logger, evolver.basis, rebuild_id, t, eps=args.count_eps)
                if basis_terms_logger is not None:
                    dump_basis_snapshot_jsonl(basis_terms_logger, 
                                              evolver.basis, rebuild_id, t, 
                                              km_small, N, args.max_terms_per_bi, 
                                              eps=args.count_eps)

            obs_logger.write_row(f"{t:.16e}", f"{ev:.16e}", f"{frac:.16e}", int(rebuilt), rebuild_id, basis_dim)
            tail_logger.write_row(f"{t:.16e}", f"{frac:.16e}", 
                                  int(frac >= args.eps_tail), rebuild_id, f"{phi_norm2:.16e}", basis_dim)

            print(f"{t: .6f}, {ev: .12f}, {frac: .3e}, {rebuilt}, {rebuild_id}, {basis_dim}")

            if step_idx < len(times) - 1:
                if args.stepper == "expm":
                    phi = evolver.step_expm(phi, dt)
                else:
                    phi = evolver.step_rk4(phi, dt)

        np.savez(out_dir / "final_state.npz", times=times, phi_last=np.asarray(phi, dtype=float))
        print(f"Saved outputs in: {out_dir}")

    finally:
        obs_logger.close()
        tail_logger.close()
        basis_logger.close()
        if basis_terms_logger is not None:
            basis_terms_logger.close()


if __name__ == "__main__":
    main()
