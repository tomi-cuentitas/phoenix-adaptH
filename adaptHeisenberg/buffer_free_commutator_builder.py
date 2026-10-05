"""
We want to iterate
    b_{k+1} = π_m^{σ0}([H, b_k])
with b_k guaranteed to live in the <=m-body ("SMALL") operator space.

The key performance/robustness issue is that the *raw commutator* can briefly
populate higher-body sectors. For typical few-body Hamiltonians (e.g. 2-body),
[H, b] increases support by at most (h_body-1) per step, so a small intermediate
buffer suffices:
    m_int = min(N, m + (h_body_max - 1))

This module builds a Phoenix/Fortran commutator routine that maps:
    rho  in SMALL system_keymap (<=m)
    ham  in Hamiltonian keymap
    res  in BIG system_keymap (<=m_int)

Then we project BIG -> SMALL in Python.

"""

from __future__ import annotations

from typing import Dict, List, Optional, Set, Tuple

import os
import sys
import re
from pathlib import Path

import importlib
import os
import subprocess
import time
import hashlib

from math import ceil, comb
from phoenix.lattice import nsites_from_shape
from phoenix.fgen.instruction import (
    BiLinearOperationInstruction,
    CallInstruction,
    InstructionEnvironment,
    InstructionGroup,
    MapApplyInstruction,
)
from phoenix.fgen.instructionvar import InstructionVariable
from phoenix.fgen.fortran_builder import F90Library
from phoenix.adaa_derived import FortranRA, FortranCA, STATUS_INPUT, STATUS_INOUT
from phoenix.fgen.pywrapper_library import PyWrapperLibrary
from phoenix.keymap import KeyMap

# Reuse the algebra + keymap constructors from commutator_builder
from adaptHeisenberg.commutator_builder import (
    all_pauli_strings,
    all_spin_groups,
    build_hamilton_keymaps,
    _get_target_variations_cached,
    pad_pauli_string,
    pauli_comm,
    simplify_pauli_string,
    triple_pattern,
)


#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####

def __legacy__build_system_keymap(num_spins: int, max_size: int) -> Tuple[KeyMap, Dict[int, KeyMap]]:
    """LEGACY:System keymap with hierarchical structure (nums_tuple -> reduced_word)."""
    inner: Dict[int, KeyMap] = {}
    system_keymap = KeyMap(name=f"system_m{max_size}")

    # Scalar subdomain
    scalar = KeyMap(name="pauli_0")
    scalar.entry("")
    system_keymap.link(tuple(), scalar)
    inner[0] = scalar

    for size in range(1, max_size + 1):
        km = KeyMap(name=f"pauli_{size}")
        for substring in all_pauli_strings(size):
            km.entry(substring)
        inner[size] = km
        for number_tuple in all_spin_groups(size, num_spins):
            system_keymap.link(number_tuple, km, no_override=False)

    return system_keymap, inner

def _build_system_keymap(
    num_spins: int,
    max_size: int,
    *,
    progress: bool = False,
    progress_every: int = 100000,
) -> Tuple[KeyMap, Dict[int, KeyMap]]:
    """System keymap with hierarchical structure (nums_tuple -> reduced_word)."""
    inner: Dict[int, KeyMap] = {}
    system_keymap = KeyMap(name=f"system_m{max_size}")

    # Scalar subdomain
    scalar = KeyMap(name="pauli_0")
    scalar.entry("")
    system_keymap.link(tuple(), scalar)
    inner[0] = scalar

    for size in range(1, max_size + 1):
        km = KeyMap(name=f"pauli_{size}")
        for substring in all_pauli_strings(size):
            km.entry(substring)
        inner[size] = km

        n_groups = comb(num_spins, size)
        if progress:
            print(f"[system keymap] size={size} groups={n_groups}")

        for j, number_tuple in enumerate(all_spin_groups(size, num_spins), start=1):
            system_keymap.link(number_tuple, km, no_override=False)
            if progress and (j % progress_every == 0):
                print(f"[system keymap] size={size} linked {j}/{n_groups}")

    return system_keymap, inner

#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####


def __legacy__build_system_explore_keymap(num_spins_explore: int, inner: Dict[int, KeyMap]) -> KeyMap:
    """LEGACY: Explore keymap: same inner domains, but only up to num_spins_explore sites."""
    explore = KeyMap(name="system explore")
    explore.link(tuple(), inner[0])
    max_size = max(inner.keys())
    for size in range(1, max_size + 1):
        km = inner[size]
        for number_tuple in all_spin_groups(size, num_spins_explore):
            explore.link(number_tuple, km)
    return explore

def _build_system_explore_keymap(
        num_spins_explore: int,
        inner: Dict[int, KeyMap],
        *,
        progress: bool = False,
    ) -> KeyMap:
    """Explore keymap: same inner domains, but only up to num_spins_explore sites."""
    explore = KeyMap(name="system explore")
    explore.link(tuple(), inner[0])
    max_size = max(inner.keys())

    for size in range(1, max_size + 1):
        km = inner[size]
        if progress:
            groups = tuple(all_spin_groups(size, num_spins_explore))
            print(f"[explore keymap] size={size} groups={len(groups)}")
            for number_tuple in groups:
                explore.link(number_tuple, km)
        else:
            for number_tuple in all_spin_groups(size, num_spins_explore):
                explore.link(number_tuple, km)

    return explore

#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####
#####-----------------#####-----------------#####-----------------#####-----------------#####


def build_commutator_buffered(
    *,
    num_spins: int,
    m_small: int,
    h_body_max: int = 2,
    num_spins_explore: Optional[int] = None,
    lattice_shape: Optional[Tuple[int, ...]] = None,
    explore_lattice_shape: Optional[Tuple[int, ...]] = None,
    zeta: Optional[int] = None,
    periodic: bool = False,
    real_only: bool = True,
    lib_basename: str = "pauli_library_comm_buf",
    py_module_name: str = "ecplib_comm_buf",
    f2py_exec: str = "f2py",
    recompile: bool = False,
    # build/diagnostics knobs
    print_stage_timings: bool = True,
    ninja_jobs: Optional[int] = None,
    verbose_profile = False,
    MAX_ENVS_PER_MAP: Optional = 512,
    sort_dedup_cases: bool = False,
):
    """Build a buffered commutator mapping SMALL rho -> BIG res.

    Returns
    -------
    (commutate, SystemSmall_ADAA, SystemBig_ADAA, Hamilton_ADAA,
     system_small_keymap, system_big_keymap, hamilton_keymap)

    Call signature (wrapper):
        tmp_big = commutate(rho=b_small, ham=H)

    Then project tmp_big -> b_next_small in Python.
    """
    # ---------------------------
    # Stage timing helpers
    # ---------------------------
    stage: Dict[str, float] = {}

    def _tic(name: str) -> None:
        stage[name] = stage.get(name, 0.0) - time.perf_counter()

    def _toc(name: str) -> None:
        stage[name] = stage.get(name, 0.0) + time.perf_counter()

    if m_small < 0:
        raise ValueError("m_small must be >=0")
    if h_body_max < 1:
        raise ValueError("h_body_max must be >=1")

    # A p-body Hamiltonian can enlarge Pauli support by at most p-1 sites.
    # For the present 2-body models this reduces to m_int = m_small + 1.
    m_int = min(num_spins, m_small + (h_body_max - 1))


    if explore_lattice_shape is not None:
        num_spins_explore = nsites_from_shape(explore_lattice_shape)
    elif num_spins_explore is None:
        num_spins_explore = m_int

    num_spins_explore = int(num_spins_explore)
    if num_spins_explore < m_int:
        raise ValueError(
            f"Exploration space is too small: m_small={m_small}, "
            f"h_body_max={h_body_max} requires m_int={m_int} distinct sites, "
            f"but num_spins_explore={num_spins_explore}. "
            "Use at least min(N, m_small + h_body_max - 1) exploration sites."
        )
    if num_spins_explore > num_spins:
        raise ValueError(
            f"num_spins_explore={num_spins_explore} exceeds num_spins={num_spins}"
        )

    # ------------------------------------------------------------------
    # Configuration-specific generated-module identity
    # ------------------------------------------------------------------
    # Older versions reused the same lib/module names for every N, m and
    # geometry.  With recompile=False, an importable extension from a previous
    # run could therefore be accepted without checking that it represented the
    # current commutator configuration.  Keep the user-facing base names, but
    # append a stable configuration fingerprint before import/compilation.
    #
    # Bump this integer whenever code-generation semantics change in a way that
    # should invalidate previously compiled extensions for the same parameters.
    _BUILD_CACHE_VERSION = 3

    build_signature = repr(
        (
            _BUILD_CACHE_VERSION,
            int(num_spins),
            int(m_small),
            int(h_body_max),
            int(num_spins_explore),
            lattice_shape,
            explore_lattice_shape,
            zeta,
            bool(periodic),
            bool(real_only),
            int(MAX_ENVS_PER_MAP) if MAX_ENVS_PER_MAP is not None else None,
            bool(sort_dedup_cases),
        )
    ).encode("utf-8")

    build_hash = hashlib.sha1(build_signature).hexdigest()[:12]

    # IMPORTANT: Fortran identifiers are limited to 63 characters with gfortran,
    # and f2py synthesizes helper names such as ``f2pyinit<fortran_module>``.
    # Never carry verbose lattice/topology tags into generated Fortran/module
    # identifiers.  The configuration hash already contains every semantic
    # parameter needed to prevent stale/incompatible kernel reuse.
    requested_lib_basename = str(lib_basename)
    requested_py_module_name = str(py_module_name)
    lib_basename = f"pbuf_{build_hash}"
    py_module_name = f"ecbuf_{build_hash}"

    # Defensive guards for future edits.  f2py's longest predictable Fortran
    # identifier here is the initialization routine ``f2pyinit<module>``.
    if len("f2pyinit" + lib_basename.lower()) > 63:
        raise ValueError(
            f"Generated Fortran identifier would exceed 63 characters: {lib_basename!r}"
        )
    if len(py_module_name) > 63:
        raise ValueError(
            f"Generated Python extension name is unexpectedly long: {py_module_name!r}"
        )

    if print_stage_timings or verbose_profile:
        print(
            "[commutator codegen] "
            f"requested_lib={requested_lib_basename!r} "
            f"requested_py={requested_py_module_name!r} "
            f"-> lib={lib_basename!r} py={py_module_name!r} "
            f"hash={build_hash} m_int={m_int} explore_sites={num_spins_explore}",
            flush=True,
        )

    _tic("system_small_keymap_build")
    system_small_keymap, inner_small = _build_system_keymap(
        num_spins,
        m_small,
        progress=verbose_profile,
    )
    _toc("system_small_keymap_build")

    _tic("system_big_keymap_build")
    system_big_keymap, inner_big = _build_system_keymap(
        num_spins,
        m_int,
        progress=verbose_profile,
    )
    _toc("system_big_keymap_build")

    _tic("system_explore_keymap_build")
    system_explore_keymap = _build_system_explore_keymap(
        num_spins_explore,
        inner_big,
        progress=verbose_profile,
    )
    _toc("system_explore_keymap_build")

    _tic("hamilton_keymap_build")
    hamilton_keymap, hamilton_explore_keymap, inner_ham = build_hamilton_keymaps(
        num_spins,
        num_spins_explore,
        lattice_shape=lattice_shape,
        explore_lattice_shape=explore_lattice_shape,
        zeta=zeta,
        periodic=periodic,
    )
    _toc("hamilton_keymap_build")
       

    # --- Instruction variables
    VarRho = InstructionVariable.new(name="rho", config=system_small_keymap)
    VarRes = InstructionVariable.new(name="res", config=system_big_keymap)
    VarHam = InstructionVariable.new(name="ham", config=hamilton_keymap)

    # --- Explore micro algebra (up to m_int!)
    commutate_operations: Dict[Tuple[str, str, str], Dict[Tuple[str, str], Set[Tuple[str, complex]]]] = {}
    commutate_cases: Dict[Tuple[str, str, str], List[Tuple[Tuple[int, ...], Tuple[int, ...], Tuple[int, ...]]] ] = {}
    #### previously: commutate_cases: Dict[Tuple[str, str, str], Set[Tuple[Tuple[int, ...], Tuple[int, ...], Tuple[int, ...]]]] = {}
  
    
    _tic("explore_commutate_operations")
    
    for nums_a_key, nums_a_entry in system_explore_keymap.items():
        nums_a = nums_a_key.onlylabel()
        for nums_b_key, nums_b_entry in hamilton_explore_keymap.items():
            nums_b = nums_b_key.onlylabel()

            for keys_a_key in nums_a_entry.keys():
                keys_a = keys_a_key.onlylabel()
                ext_a = pad_pauli_string(keys_a, nums_a, num_spins_explore)

                for keys_b_key in nums_b_entry.keys():
                    keys_b = keys_b_key.onlylabel()
                    ext_b = pad_pauli_string(keys_b, nums_b, num_spins_explore)

                    ext_c, factor = pauli_comm(ext_a, ext_b)
                    if ext_c is None:
                        continue

                    t_pattern = triple_pattern(ext_a, ext_b, ext_c)

                    # BUFFER truncation: keep everything up to m_int
                    if t_pattern[-1].count("X") > m_int:
                        continue

                    if t_pattern not in commutate_operations:
                        commutate_operations[t_pattern] = {}
                        commutate_cases[t_pattern] = []

                    commutate_operations[t_pattern].setdefault((keys_a, keys_b), set())

                    keys_c, _ = simplify_pauli_string(ext_c)
                    commutate_operations[t_pattern][(keys_a, keys_b)].add((keys_c, factor))
    _toc("explore_commutate_operations")
    
    valid_patterns = set(commutate_cases.keys())
    
    if verbose_profile:
        print("commutate_operations length=", len(commutate_operations))

    # --- Collect cases over full model
    _tic("collect_cases_full_model")

    all_ham_domains = list(hamilton_keymap.keys())

    if verbose_profile:
        all_small_domains = list(system_small_keymap.keys())
        n_small = len(all_small_domains)

        for ia, nums_a_key in enumerate(all_small_domains, start=1):
            nums_a = nums_a_key.onlylabel()

            if ia % 5000 == 0 or ia == 1 or ia == n_small:
                print(f"[collect_cases_full_model] rho domains {ia}/{n_small}")

            for nums_b_key in all_ham_domains:
                nums_b = nums_b_key.onlylabel()

                for nums_c, t_pattern in _get_target_variations_cached(nums_a, nums_b):
                    if t_pattern in valid_patterns and len(nums_c) <= m_int:
                        commutate_cases[t_pattern].append((nums_a, nums_b, nums_c))
    else:
        for nums_a_key in system_small_keymap.keys():
            nums_a = nums_a_key.onlylabel()

            for nums_b_key in all_ham_domains:
                nums_b = nums_b_key.onlylabel()

                for nums_c, t_pattern in _get_target_variations_cached(nums_a, nums_b):
                    if t_pattern in valid_patterns and len(nums_c) <= m_int:
                        commutate_cases[t_pattern].append((nums_a, nums_b, nums_c))

    _toc("collect_cases_full_model")

       
    if verbose_profile:
        print("commutate cases=", sum(len(v) for v in commutate_cases.values()))
        print("commutate cases cases=", sum(len(cases) for cases in commutate_cases.values()))

    _tic("dedup_cases")
    for t_pattern, cases in commutate_cases.items():
        if not cases:
            continue
        unique_cases = set(cases)
        if sort_dedup_cases:
            commutate_cases[t_pattern] = sorted(unique_cases)
        else:
            commutate_cases[t_pattern] = list(unique_cases)
    _toc("dedup_cases")    

    # --- Library
    _tic("fortran_library_build_structures")
    lib = F90Library(lib_basename)

    if real_only:
        SystemSmall_ADAA = FortranRA.set_keymap(system_small_keymap)
        SystemBig_ADAA = FortranRA.set_keymap(system_big_keymap)
        Hamilton_ADAA = FortranRA.set_keymap(hamilton_keymap)
    else:
        SystemSmall_ADAA = FortranCA.set_keymap(system_small_keymap)
        SystemBig_ADAA = FortranCA.set_keymap(system_big_keymap)
        Hamilton_ADAA = FortranCA.set_keymap(hamilton_keymap)
    
    ham_domains = [k.onlylabel() for k in hamilton_keymap.keys()]
    n_onsite = sum(1 for nums in ham_domains if len(nums) == 1)
    n_pairs = sum(1 for nums in ham_domains if len(nums) == 2)

    if verbose_profile:
        print("ham onsite domains:", n_onsite)
        print("ham 2-body domains:", n_pairs)
        print("ham total domains:", len(ham_domains))

    daa_assignments = {
         VarRho: (SystemSmall_ADAA, STATUS_INPUT),
        VarHam: (Hamilton_ADAA, STATUS_INPUT),
        VarRes: (SystemBig_ADAA, STATUS_INOUT),
    }

    # Inner variables: rho only up to m_small; res up to m_int.
    VarInpRInner: Dict[int, InstructionVariable] = {}
    VarTargInner: Dict[int, InstructionVariable] = {}

    for size in range(m_small + 1):
        VarInpRInner[size] = InstructionVariable.new(name=f"rho_inner_{size}", config=inner_small[size])

    for size in range(m_int + 1):
        VarTargInner[size] = InstructionVariable.new(name=f"res_inner_{size}", config=inner_big[size])

    VarInpHInner: Dict[int, InstructionVariable] = {
        1: InstructionVariable.new(name="ham_inner_1", config=inner_ham[1]),
        2: InstructionVariable.new(name="ham_inner_2", config=inner_ham[2]),
    }

    # --- Build instruction groups
    instruction_groups: Dict[Tuple[str, str, str], InstructionGroup] = {}
    live_patterns = {tp for tp, cases in commutate_cases.items() if cases} ### safe
    
    for t_pattern, operations in commutate_operations.items():
        if t_pattern not in live_patterns:
            continue
        len_r, len_h, len_t = map(lambda x: x.count("X"), t_pattern)

        # rho len must be <= m_small, target len must be <= m_int
        if len_r > m_small or len_t > m_int:
            continue

        rho_var = VarInpRInner[len_r]
        ham_var = VarInpHInner[len_h]
        targ_var = VarTargInner[len_t]

        instrs: List[BiLinearOperationInstruction] = []
        for (src_r, src_h), op_set in operations.items():
            for tgt_key, factor in op_set:
                if real_only:
                    coeff = float((factor * 1j).real)
                else:
                    coeff = factor

                instrs.append(
                    BiLinearOperationInstruction(
                        targ_var(tgt_key),
                        rho_var(src_r),
                        ham_var(src_h),
                        coeff,
                    )
                )

        instruction_groups[t_pattern] = InstructionGroup(instrs)
        
    if verbose_profile:
        print("=== instruction group sizes ===")
        for tp, ig in instruction_groups.items():
            try:
                n_instr = len(ig.instructions)
            except Exception:
                n_instr = None
            print(f"pattern={tp} n_instr={n_instr}")

    # --- Build per-pattern routines and summary routine
    libroutines = {}
    num = 0
    for t_pattern, cases in commutate_cases.items():
        # Skip patterns that never occur, or filtered out (no instruction group).
        if not cases:
            continue
        if t_pattern not in instruction_groups:
            continue

        case_list = cases  # already deduplicated/sorted above

        if verbose_profile:
            print("total envs", len(case_list))

        lr_name = f"commutate_{num:03d}"

        if verbose_profile:
            n_envs = len(case_list)
            n_maps = (n_envs + MAX_ENVS_PER_MAP - 1) // MAX_ENVS_PER_MAP
            print(f"[pattern {num:03d}] envs={n_envs} maps={n_maps}")

        _make_env = InstructionEnvironment
        _var_rho = VarRho
        _var_ham = VarHam
        _var_res = VarRes
        _inp_r = VarInpRInner
        _inp_h = VarInpHInner
        _targ_r = VarTargInner

        part_routines = []
        for part_idx, i0 in enumerate(range(0, len(case_list), MAX_ENVS_PER_MAP)):
            case_chunk = case_list[i0 : i0 + MAX_ENVS_PER_MAP]

            env_chunk = []
            for (rho_nums, ham_nums, res_nums) in case_chunk:
                env_chunk.append(
                    _make_env(
                        {
                            _inp_r[len(rho_nums)]: _var_rho(rho_nums),
                            _inp_h[len(ham_nums)]: _var_ham(ham_nums),
                            _targ_r[len(res_nums)]: _var_res(res_nums),
                        }
                    )
                )

            part_name = f"{lr_name}_part{part_idx:03d}"
            part_lr = lib.libroutine_from_instructions(
                part_name,
                MapApplyInstruction(
                    content=instruction_groups[t_pattern],
                    environments=env_chunk,
                ),
                daa_assignments=daa_assignments,
            )
            part_routines.append(part_lr)

        # Main routine just calls the parts in sequence (no MapApply here!)
        lr = lib.libroutine_from_instructions(
            lr_name,
            *[CallInstruction(pr) for pr in part_routines],
            daa_assignments=daa_assignments,
        )

        libroutines[lr_name] = lr
        num += 1

    lib.libroutine_from_instructions(
        "commutate",
        *[CallInstruction(lr) for lr in libroutines.values()],
        daa_assignments=daa_assignments,
    )
    _toc("fortran_library_build_structures")

    # --- Emit Fortran
    _tic("emit_fortran")
    lib.build()

    # Post-process generated Fortran:
    # 1) only expose "commutate" publicly to f2py
    # 2) fix broken internal helper calls like
    #       call commutate_0001(...)
    #       call commutate_0002(...)
    #       call commutate_003_part0001(...)
    #       call commutate_003_part0002(...)
    #    which must instead be
    #       call commutate_000(...)
    #       call commutate_003_part000(...)
    f90_path = Path(f"{lib_basename}.f90")
    _f90_text = f90_path.read_text(encoding="utf-8")

    if "  PRIVATE\n  PUBLIC :: commutate\n" not in _f90_text:
        _f90_text = _f90_text.replace(
            "  IMPLICIT NONE\n",
            "  IMPLICIT NONE\n  PRIVATE\n  PUBLIC :: commutate\n",
            1,
        )

    # Strip any spurious numeric suffix after helper routine names in call sites.
    # Examples:
    #   commutate_0001(        -> commutate_000(
    #   commutate_0002(        -> commutate_000(
    #   commutate_003_part0001( -> commutate_003_part000(
    #   commutate_003_part0002( -> commutate_003_part000(
    _f90_text = re.sub(
        r"\b(commutate_[0-9]{3}(?:_part[0-9]{3})?)\d+(?=\s*\()",
        r"\1",
        _f90_text,
    )

    _bad_names = re.findall(
        r"\bcommutate_[0-9]{3}(?:_part[0-9]{3})?\d+(?=\s*\()",
        _f90_text,
    )
    if _bad_names:
        raise RuntimeError(
            f"Generated Fortran still contains broken helper-call names: {_bad_names[:20]}"
        )

    f90_path.write_text(_f90_text, encoding="utf-8")
    _toc("emit_fortran")

    # --- Compile/import via f2py
    mod = None

    def _try_import():
        try:
            return importlib.import_module(py_module_name)
        except Exception:
            return None

    if not recompile:
        mod = _try_import()

    if mod is None:
        # IMPORTANT: I included -fmax-array-constructor to avoid gfortran 65535 limit
        f90flags = (
            "-O3 "
            "-ffree-line-length-none "
            "-Wno-line-truncation -Wno-error=line-truncation "
            "-fmax-array-constructor=1000000"
        )

        env = os.environ.copy()

        # Parallel compilation (meson/ninja). If ninja_jobs=None, auto-detect cores.
        if ninja_jobs is None:
            nj = os.cpu_count() or 8
        else:
            nj = int(ninja_jobs)

        env["NINJAFLAGS"] = env.get("NINJAFLAGS", f"-j{nj}")

        # Propagate flags to the active f2py backend.
        env["F90FLAGS"] = (env.get("F90FLAGS", "") + " " + f90flags).strip()
        env["FFLAGS"] = (env.get("FFLAGS", "") + " " + f90flags).strip()
        env["FCFLAGS"] = (env.get("FCFLAGS", "") + " " + f90flags).strip()

        cmd = [
            f2py_exec,
            "-m",
            py_module_name,
            "-c",
            f"{lib_basename}.f90",
            f"--f90flags={f90flags}",
        ]

        _tic("compile_f2py_meson")
        ret = subprocess.run(cmd, env=env)
        _toc("compile_f2py_meson")

        if ret.returncode != 0:
            # Python >=3.12 cannot use NumPy's historical distutils backend.
            # Do not misleadingly rerun the same Meson failure as a fake fallback.
            if sys.version_info >= (3, 12):
                raise RuntimeError(
                    f"f2py Meson compilation failed (rc={ret.returncode}); "
                    "distutils fallback is unavailable on Python >=3.12."
                )

            env2 = env.copy()
            env2["NPY_F2PY_BACKEND"] = "distutils"
            _tic("compile_f2py_distutils")
            ret2 = subprocess.run(cmd, env=env2)
            _toc("compile_f2py_distutils")
            if ret2.returncode != 0:
                raise RuntimeError(
                    f"f2py compilation failed (meson rc={ret.returncode}, "
                    f"distutils rc={ret2.returncode})."
                )

        mod = _try_import()
        if mod is None:
            raise RuntimeError(f"Built but cannot import python module {py_module_name!r}")

    # --- Resolve wrapper root with commutate
    def _resolve(root, routine_name: str):
        if hasattr(root, routine_name):
            return root
        found = []
        for attr in dir(root):
            if attr.startswith("__"):
                continue
            obj = getattr(root, attr)
            if hasattr(obj, routine_name):
                found.append(attr)
        if len(found) == 1:
            return getattr(root, found[0])
        raise RuntimeError(f"Cannot resolve routine {routine_name!r} in module {py_module_name!r}. Found={found}")

    wrapper_root = _resolve(mod, "commutate")
    wrapper_lib = PyWrapperLibrary(lib, wrapper_lib=wrapper_root)
    commutate = wrapper_lib.create_wrapper("commutate")

    if print_stage_timings:
        print("=== build_commutator_buffered stage timings ===")
        for k, v in sorted(stage.items(), key=lambda kv: kv[0]):
            print(f"{k:28s}: {v:10.3f} s")

    return (
        commutate,
        SystemSmall_ADAA,
        SystemBig_ADAA,
        Hamilton_ADAA,
        system_small_keymap,
        system_big_keymap,
        hamilton_keymap,
    )
