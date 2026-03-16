#!/usr/bin/env python3
import argparse
import os
import time


def main():
    ap = argparse.ArgumentParser(
        description="Build-only backend timing for Phoenix commutator builder."
    )
    ap.add_argument("--N", type=int, required=True, help="Number of spins")
    ap.add_argument("--m", type=int, required=True, help="m_small truncation order")

    ap.add_argument(
        "--recompile",
        action="store_true",
        help="Force rebuild + f2py compile (slow).",
    )
    ap.add_argument(
        "--explore",
        type=int,
        default=None,
        help="Override num_spins_explore (optional).",
    )
    ap.add_argument(
        "--no-stage",
        action="store_true",
        help="Disable internal stage timing printout.",
    )
    ap.add_argument(
        "--jobs",
        type=int,
        default=None,
        help="Ninja parallel jobs for compilation (default: cpu_count).",
    )
    args = ap.parse_args()

    N = args.N
    m_small = args.m
    num_spins_explore = args.explore

    from adaptHeisenberg.buffer_free_commutator_builder import build_commutator_buffered

    print(f"\n[INFO] Starting backend build: N={N}, m_small={m_small}")
    if num_spins_explore is not None:
        print(f"[INFO] Using override num_spins_explore={num_spins_explore}")
    if args.jobs is not None:
        print(f"[INFO] Using ninja jobs={args.jobs}")
    else:
        print(f"[INFO] Using ninja jobs=auto ({os.cpu_count()})")

    t0 = time.perf_counter()

    build_commutator_buffered(
        num_spins=N,
        m_small=m_small,
        num_spins_explore=num_spins_explore,
        real_only=True,
        recompile=args.recompile,
        print_stage_timings=(not args.no_stage),
        ninja_jobs=args.jobs,
    )

    t1 = time.perf_counter()
    print(f"\n[bench_backend_build.py] TOTAL WALL TIME = {t1 - t0:.3f} s\n")


if __name__ == "__main__":
    main()