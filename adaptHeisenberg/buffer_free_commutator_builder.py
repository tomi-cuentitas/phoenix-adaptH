"""adaptHeisenberg.efficient_commutator_builder

Purpose
-------
Provide a *buffer-aware* commutator builder for iterated projected commutators.

You want to iterate
    b_{k+1} = π_m^{σ0}([H, b_k])
with b_k guaranteed to live in the <=m-body ("SMALL") operator space.

The key performance/robustness issue is that the *raw commutator* can briefly
populate higher-body sectors. For typical few-body Hamiltonians (e.g. 2-body),
[H, b] increases support by at most (h_body-1) per step, so a small intermediate
buffer suffices:
    m_int = min(N, m + (h_body_max - 1))
(For 2-body Hamiltonians, m_int = min(N, m+1).)

This module builds a Phoenix/Fortran commutator routine that maps:
    rho  in SMALL system_keymap (<=m)
    ham  in Hamiltonian keymap
    res  in BIG system_keymap (<=m_int)

Then you project BIG -> SMALL in Python.

Why this helps
--------------
- You avoid allocating/compiling against the full <=N operator space.
- You never compute nested raw commutators; you only compute one commutator per
  step, into a controlled intermediate buffer, then project.

Integration notes
-----------------
- This is a minimal refactor of adaptHeisenberg.commutator_builder.
- It does *not* inline the projection into the Fortran commutator (because the
  projection weights depend on sigma0 and require additional runtime dataflow).
- You can keep projection.py unchanged for SAME-type projection, but for BIG->SMALL
  you need a cross-type projection helper. Recommended: add
  `project_system_adaa_between(src, dst, ...)` to projection.py.

"""

from __future__ import annotations

from typing import Dict, List, Optional, Set, Tuple

import importlib
import os
import subprocess

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
    get_target_variations,
    pad_pauli_string,
    pauli_comm,
    simplify_pauli_string,
    triple_pattern,
)


def _build_system_keymap(num_spins: int, max_size: int) -> Tuple[KeyMap, Dict[int, KeyMap]]:
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
        for number_tuple in all_spin_groups(size, num_spins):
            system_keymap.link(number_tuple, km)

    return system_keymap, inner


def _build_system_explore_keymap(num_spins_explore: int, inner: Dict[int, KeyMap]) -> KeyMap:
    """Explore keymap: same inner domains, but only up to num_spins_explore sites."""
    explore = KeyMap(name="system explore")
    explore.link(tuple(), inner[0])
    max_size = max(inner.keys())
    for size in range(1, max_size + 1):
        km = inner[size]
        for number_tuple in all_spin_groups(size, num_spins_explore):
            explore.link(number_tuple, km)
    return explore


def build_commutator_buffered(
    *,
    num_spins: int,
    m_small: int,
    h_body_max: int = 2,
    num_spins_explore: Optional[int] = None,
    real_only: bool = True,
    lib_basename: str = "pauli_library_comm_buf",
    py_module_name: str = "ecplib_comm_buf",
    f2py_exec: str = "f2py",
    recompile: bool = False,
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

    if m_small < 0:
        raise ValueError("m_small must be >=0")
    if h_body_max < 1:
        raise ValueError("h_body_max must be >=1")

    m_int = min(num_spins, m_small + (h_body_max - 1))

    if num_spins_explore is None:
        # same heuristic used previously
        num_spins_explore = min(num_spins, max(m_int + m_int // 2, m_int))

    # --- KeyMaps
    system_small_keymap, inner_small = _build_system_keymap(num_spins, m_small)
    system_big_keymap, inner_big = _build_system_keymap(num_spins, m_int)

    system_explore_keymap = _build_system_explore_keymap(num_spins_explore, inner_big)

    hamilton_keymap, hamilton_explore_keymap, inner_ham = build_hamilton_keymaps(num_spins, num_spins_explore)

    # --- Instruction variables
    VarRho = InstructionVariable.new(name="rho", config=system_small_keymap)
    VarRes = InstructionVariable.new(name="res", config=system_big_keymap)
    VarHam = InstructionVariable.new(name="ham", config=hamilton_keymap)

    # --- Explore micro algebra (up to m_int!)
    commutate_operations: Dict[Tuple[str, str, str], Dict[Tuple[str, str], Set[Tuple[str, complex]]]] = {}
    commutate_cases: Dict[Tuple[str, str, str], Set[Tuple[Tuple[int, ...], Tuple[int, ...], Tuple[int, ...]]]] = {}

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
                        commutate_cases[t_pattern] = set()

                    commutate_operations[t_pattern].setdefault((keys_a, keys_b), set())

                    keys_c, _ = simplify_pauli_string(ext_c)
                    commutate_operations[t_pattern][(keys_a, keys_b)].add((keys_c, factor))

    # --- Collect cases over full model
    for nums_a_key, _ in system_small_keymap.items():
        nums_a = nums_a_key.onlylabel()
        for nums_b_key, _ in hamilton_keymap.items():
            nums_b = nums_b_key.onlylabel()

            for nums_c, t_pattern in get_target_variations(nums_a, nums_b):
                if t_pattern in commutate_cases:
                    # nums_c can be up to m_int by construction
                    if len(nums_c) <= m_int:
                        commutate_cases[t_pattern].add((nums_a, nums_b, nums_c))

    # --- Library
    lib = F90Library(lib_basename)

    if real_only:
        SystemSmall_ADAA = FortranRA.set_keymap(system_small_keymap)
        SystemBig_ADAA = FortranRA.set_keymap(system_big_keymap)
        Hamilton_ADAA = FortranRA.set_keymap(hamilton_keymap)
    else:
        SystemSmall_ADAA = FortranCA.set_keymap(system_small_keymap)
        SystemBig_ADAA = FortranCA.set_keymap(system_big_keymap)
        Hamilton_ADAA = FortranCA.set_keymap(hamilton_keymap)

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
    for t_pattern, operations in commutate_operations.items():
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

    # --- Build per-pattern routines and summary routine
    # NOTE: commutate_cases is seeded with *all* patterns discovered during the
    # explore phase (commutate_operations). Many of those patterns are impossible
    # in the SMALL->BIG workflow (e.g. rho pattern requires >m_small sites), so
    # they will have empty `cases` and/or no corresponding instruction group.
    # We must skip them.
    libroutines = {}
    num = 0
    for t_pattern, cases in commutate_cases.items():
                # Skip patterns that never occur for the concrete (rho,ham)->res
        # variations, or that were filtered out when building instruction groups.
        if not cases:
            continue
        if t_pattern not in instruction_groups:
            continue

        envs = []
        for (rho_nums, ham_nums, res_nums) in cases:
            envs.append(
                InstructionEnvironment(
                    {
                        VarInpRInner[len(rho_nums)]: VarRho(rho_nums),
                        VarInpHInner[len(ham_nums)]: VarHam(ham_nums),
                        VarTargInner[len(res_nums)]: VarRes(res_nums),
                    }
                )
            )

        lr_name = f"commutate_{num:03d}"
        lr = lib.libroutine_from_instructions(
            lr_name,
            MapApplyInstruction(content=instruction_groups[t_pattern], environments=envs),
            daa_assignments=daa_assignments,
        )
        libroutines[lr_name] = lr
        num += 1

    lib.libroutine_from_instructions(
        "commutate",
        *[CallInstruction(lr) for lr in libroutines.values()],
        daa_assignments=daa_assignments,
    )

    # --- Emit Fortran
    lib.build()

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
        f90flags = "-ffree-line-length-none -Wno-line-truncation -Wno-error=line-truncation"
        env = os.environ.copy()
        env["F90FLAGS"] = (env.get("F90FLAGS", "") + " " + f90flags).strip()
        env["FFLAGS"] = (env.get("FFLAGS", "") + " " + f90flags).strip()

        cmd = [
            f2py_exec,
            "-m",
            py_module_name,
            "-c",
            f"{lib_basename}.f90",
            f"--f90flags={f90flags}",
        ]

        ret = subprocess.run(cmd, env=env)
        if ret.returncode != 0:
            env2 = env.copy()
            env2["NPY_F2PY_BACKEND"] = "distutils"
            ret2 = subprocess.run(cmd, env=env2)
            if ret2.returncode != 0:
                raise RuntimeError(
                    f"f2py compilation failed (meson rc={ret.returncode}, distutils rc={ret2.returncode})."
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

    return (
        commutate,
        SystemSmall_ADAA,
        SystemBig_ADAA,
        Hamilton_ADAA,
        system_small_keymap,
        system_big_keymap,
        hamilton_keymap,
    )
