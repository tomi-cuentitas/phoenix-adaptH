"""adaptHeisenberg.commutator_builder

Build a Phoenix/Fortran commutator routine as a reusable function.

This is a refactor of `example/test_fortran_builder_comm_3.py` into a side-effect-free
builder. It constructs the Pauli commutator instruction graph by exploring patterns,
then emits Fortran via F90Library, compiles with f2py, and returns a Python callable
wrapper:

    commutate(ham=ham_adaa, rho=rho_adaa, res=res_adaa)

Key points:
- Uses KeyMap.link / KeyMap.entry (your Phoenix version; no add_key / no item assignment).
- The returned callable is produced by PyWrapperLibrary and operates on ADAAs.
- You can choose REAL_ONLY=True (recommended).

"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Dict, Iterable, List, Optional, Sequence, Set, Tuple

import subprocess
import sys
import os
import importlib

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


# -----------------------------------------------------------------------------
# Pauli algebra helpers (copied from comm_3 with minimal edits)
# -----------------------------------------------------------------------------

pauli_table = {
    "0": {"0": ("0", 0), "x": ("x", 0), "y": ("y", 0), "z": ("z", 0)},
    "x": {"0": ("x", 0), "x": ("0", 0), "y": ("z", 1), "z": ("y", 3)},
    "y": {"0": ("y", 0), "x": ("z", 3), "y": ("0", 0), "z": ("x", 1)},
    "z": {"0": ("z", 0), "x": ("y", 1), "y": ("x", 3), "z": ("0", 0)},
}


def all_pauli_strings(string_size: int, prefix: str = ""):
    if string_size <= 0:
        yield prefix
    else:
        yield from all_pauli_strings(string_size - 1, prefix=f"{prefix}x")
        yield from all_pauli_strings(string_size - 1, prefix=f"{prefix}y")
        yield from all_pauli_strings(string_size - 1, prefix=f"{prefix}z")


def pauli_comm(string_a: str, string_b: str):
    assert len(string_a) == len(string_b)
    result_ab = ""
    result_ba = ""
    coeff_phase_ab = 0
    coeff_phase_ba = 0
    for letter_a, letter_b in zip(string_a, string_b):
        letter_ab, letter_phase_ab = pauli_table[letter_a][letter_b]
        letter_ba, letter_phase_ba = pauli_table[letter_b][letter_a]
        result_ab += letter_ab
        result_ba += letter_ba
        coeff_phase_ab += letter_phase_ab
        coeff_phase_ba += letter_phase_ba

    if result_ab == result_ba:
        factor = (1j ** (coeff_phase_ab) - 1j ** (coeff_phase_ba))
        if abs(factor) > 1e-12:
            return result_ab, factor
        return None, None
    raise SystemError("Unexpected Pauli multiplication mismatch")


def pad_pauli_string(reduced: str, nums: Tuple[int, ...], length: int) -> str:
    padded = ["0"] * length
    for letter, index in zip(reduced, nums):
        padded[index] = letter
    return "".join(padded)


def simplify_pauli_string(padded: str) -> Tuple[str, Tuple[int, ...]]:
    nums: List[int] = []
    reduced = ""
    for index, letter in enumerate(padded):
        if letter == "0":
            continue
        nums.append(index)
        reduced += letter
    return reduced, tuple(nums)


def all_spin_groups(length: int, num_spins: int, collect: Optional[List[int]] = None):
    if collect is None:
        collect = []
    if length == 0:
        yield tuple(collect)
    else:
        for index in range(max(collect + [-1]) + 1, num_spins):
            yield from all_spin_groups(length - 1, num_spins, collect + [index])


def triple_pattern(string_a: str, string_b: str, string_c: str):
    pat_a = ""
    pat_b = ""
    pat_c = ""
    assert len(string_a) == len(string_b) == len(string_c)
    for let_a, let_b, let_c in zip(string_a, string_b, string_c):
        if let_a != "0" or let_b != "0" or let_c != "0":
            pat_a += "X" if let_a in "xyz" else "_"
            pat_b += "X" if let_b in "xyz" else "_"
            pat_c += "X" if let_c in "xyz" else "_"
    return (pat_a, pat_b, pat_c)


def get_target_variations(
    nums_a: Tuple[int, ...],
    nums_b: Tuple[int, ...],
    _combined=None,
    _nums_c=None,
    _t_a: Optional[str] = None,
    _t_b: Optional[str] = None,
    _t_c: Optional[str] = None,
):
    if _combined is None:
        _combined = set.union(set(nums_a), set(nums_b))
    if _nums_c is None:
        _nums_c = []
    if _t_a is None:
        _t_a = ""
    if _t_b is None:
        _t_b = ""
    if _t_c is None:
        _t_c = ""

    if len(_combined) > 0:
        num = sorted(_combined)[0]
        if num in nums_a and num in nums_b:
            yield from get_target_variations(
                nums_a,
                nums_b,
                _combined=_combined - {num},
                _nums_c=_nums_c,
                _t_a=_t_a + "X",
                _t_b=_t_b + "X",
                _t_c=_t_c + "_",
            )
            yield from get_target_variations(
                nums_a,
                nums_b,
                _combined=_combined - {num},
                _nums_c=_nums_c + [num],
                _t_a=_t_a + "X",
                _t_b=_t_b + "X",
                _t_c=_t_c + "X",
            )
        elif num in nums_a:
            yield from get_target_variations(
                nums_a,
                nums_b,
                _combined=_combined - {num},
                _nums_c=_nums_c + [num],
                _t_a=_t_a + "X",
                _t_b=_t_b + "_",
                _t_c=_t_c + "X",
            )
        elif num in nums_b:
            yield from get_target_variations(
                nums_a,
                nums_b,
                _combined=_combined - {num},
                _nums_c=_nums_c + [num],
                _t_a=_t_a + "_",
                _t_b=_t_b + "X",
                _t_c=_t_c + "X",
            )
    else:
        yield tuple(_nums_c), (_t_a, _t_b, _t_c)


# -----------------------------------------------------------------------------
# KeyMap constructors
# -----------------------------------------------------------------------------


def build_system_keymap(num_spins: int, max_size: int) -> Tuple[KeyMap, Dict[int, KeyMap]]:
    inner: Dict[int, KeyMap] = {}

    system_keymap = KeyMap(name="system")
    system_explore_keymap = KeyMap(name="system explore")

    scalar = KeyMap(name="pauli_0")
    scalar.entry("")

    system_keymap.link(tuple(), scalar)
    system_explore_keymap.link(tuple(), scalar)
    inner[0] = scalar

    # NOTE: explore keymap uses fewer spins; caller decides and passes separate.
    for size in range(1, max_size + 1):
        km = KeyMap(name=f"pauli_{size}")
        for substring in all_pauli_strings(size):
            km.entry(substring)
        inner[size] = km
        for number_tuple in all_spin_groups(size, num_spins):
            system_keymap.link(number_tuple, km)

    return system_keymap, inner


def build_system_explore_keymap(num_spins_explore: int, inner_keymaps_system: Dict[int, KeyMap]) -> KeyMap:
    system_explore_keymap = KeyMap(name="system explore")
    system_explore_keymap.link(tuple(), inner_keymaps_system[0])
    max_size = max(inner_keymaps_system.keys())
    for size in range(1, max_size + 1):
        km = inner_keymaps_system[size]
        for number_tuple in all_spin_groups(size, num_spins_explore):
            system_explore_keymap.link(number_tuple, km)
    return system_explore_keymap


def build_hamilton_keymaps(num_spins: int, num_spins_explore: int) -> Tuple[KeyMap, KeyMap, Dict[int, KeyMap]]:
    inner_h: Dict[int, KeyMap] = {}

    hamilton_keymap = KeyMap(name="hamiltonian")
    hamilton_explore_keymap = KeyMap(name="hamiltonian explore")

    keymap_larmor = KeyMap(name="ham_single")
    for s in ("x", "y", "z"):
        keymap_larmor.entry(s)

    keymap_dipdip = KeyMap(name="dipdip")
    for s in ("xx", "yy", "zz"):
        keymap_dipdip.entry(s)

    inner_h[1] = keymap_larmor
    inner_h[2] = keymap_dipdip

    for number_tuple in all_spin_groups(1, num_spins):
        hamilton_keymap.link(number_tuple, keymap_larmor)
    for number_tuple in all_spin_groups(2, num_spins):
        hamilton_keymap.link(number_tuple, keymap_dipdip)

    for number_tuple in all_spin_groups(1, num_spins_explore):
        hamilton_explore_keymap.link(number_tuple, keymap_larmor)
    for number_tuple in all_spin_groups(2, num_spins_explore):
        hamilton_explore_keymap.link(number_tuple, keymap_dipdip)

    return hamilton_keymap, hamilton_explore_keymap, inner_h


# -----------------------------------------------------------------------------
# Public builder
# -----------------------------------------------------------------------------


def build_commutator(
    *,
    num_spins: int,
    max_size: int,
    num_spins_explore: Optional[int] = None,
    real_only: bool = True,
    lib_basename: str = "pauli_library_comm",
    py_module_name: str = "ecplib",
    f2py_exec: str = "f2py",
    recompile: bool = False,
):
    """Build and return a wrapper callable for `commutate`.

    Parameters
    ----------
    num_spins:
        Total model size (NUM_SPINS).
    max_size:
        Truncation size (MAX_SIZE).
    num_spins_explore:
        Size of the reduced exploration model. If None uses max_size + max_size//2,
        but not exceeding num_spins.
    real_only:
        If True, use FortranRA and include factor*1j in instructions.
    lib_basename:
        Base name for the generated Fortran file (<lib_basename>.f90).
    py_module_name:
        Name of the f2py python extension module.
    recompile:
        Force recompilation.

    Returns
    -------
    (commutate, System_ADAA, Hamilton_ADAA, system_keymap, hamilton_keymap)

    commutate is callable as: commutate(rho=..., ham=..., res=...)
    """

    if num_spins_explore is None:
        num_spins_explore = min(num_spins, max_size + max_size // 2)

    # --- KeyMaps (same structure as comm_3 script)
    system_keymap, inner_keymaps_system = build_system_keymap(num_spins, max_size)
    system_explore_keymap = build_system_explore_keymap(num_spins_explore, inner_keymaps_system)
    hamilton_keymap, hamilton_explore_keymap, inner_keymaps_hamilt = build_hamilton_keymaps(
        num_spins, num_spins_explore
    )

    # --- Instruction variables
    VarRes = InstructionVariable.new(name="res", config=system_keymap)
    VarRho = InstructionVariable.new(name="rho", config=system_keymap)
    VarHam = InstructionVariable.new(name="ham", config=hamilton_keymap)

    # --- Explore micro-algebra and collect operations
    commutate_operations: Dict[Tuple[str, str, str], Dict[Tuple[str, str], Set[Tuple[str, complex]]]] = {}
    commutate_cases: Dict[Tuple[str, str, str], Set[Tuple[Tuple[int, ...], Tuple[int, ...], Tuple[int, ...]]]] = {}

    for nums_a_key, nums_a_entry in system_explore_keymap.items():
        nums_a = nums_a_key.onlylabel()
        for nums_b_key, nums_b_entry in hamilton_explore_keymap.items():
            nums_b = nums_b_key.onlylabel()

            for keys_a_key in nums_a_entry.keys():
                keys_a = keys_a_key.onlylabel()
                ext_string_a = pad_pauli_string(keys_a, nums_a, num_spins_explore)

                for keys_b_key in nums_b_entry.keys():
                    keys_b = keys_b_key.onlylabel()
                    ext_string_b = pad_pauli_string(keys_b, nums_b, num_spins_explore)

                    ext_prod_c, factor = pauli_comm(ext_string_a, ext_string_b)
                    if ext_prod_c is None:
                        continue

                    t_pattern = triple_pattern(ext_string_a, ext_string_b, ext_prod_c)

                    # truncation check
                    if t_pattern[-1].count("X") > max_size:
                        continue

                    if t_pattern not in commutate_operations:
                        commutate_operations[t_pattern] = {}
                        commutate_cases[t_pattern] = set()

                    if (keys_a, keys_b) not in commutate_operations[t_pattern]:
                        commutate_operations[t_pattern][(keys_a, keys_b)] = set()

                    keys_c, _nums_c = simplify_pauli_string(ext_prod_c)
                    commutate_operations[t_pattern][(keys_a, keys_b)].add((keys_c, factor))

    # --- Collect cases over full model
    for nums_a_key, _nums_a_entry in system_keymap.items():
        nums_a = nums_a_key.onlylabel()
        for nums_b_key, _nums_b_entry in hamilton_keymap.items():
            nums_b = nums_b_key.onlylabel()

            for nums_c, t_pattern in get_target_variations(nums_a, nums_b):
                if t_pattern in commutate_cases:
                    commutate_cases[t_pattern].add((nums_a, nums_b, nums_c))
                    assert len(nums_c) <= max_size

    # --- Library
    my_library = F90Library(lib_basename)

    if real_only:
        System_ADAA = FortranRA.set_keymap(system_keymap)
        Hamilton_ADAA = FortranRA.set_keymap(hamilton_keymap)
    else:
        System_ADAA = FortranCA.set_keymap(system_keymap)
        Hamilton_ADAA = FortranCA.set_keymap(hamilton_keymap)

    daa_assignments = {
        VarRho: (System_ADAA, STATUS_INPUT),
        VarRes: (System_ADAA, STATUS_INOUT),
        VarHam: (Hamilton_ADAA, STATUS_INPUT),
    }

    VarInpRInner: Dict[int, InstructionVariable] = {}
    VarInpHInner: Dict[int, InstructionVariable] = {}
    VarTargInner: Dict[int, InstructionVariable] = {}

    for size in range(max_size + 1):
        VarInpRInner[size] = InstructionVariable.new(
            name=f"rho_inner_{size}", config=inner_keymaps_system[size]
        )
        VarTargInner[size] = InstructionVariable.new(
            name=f"res_inner_{size}", config=inner_keymaps_system[size]
        )

    VarInpHInner[1] = InstructionVariable.new(name="ham_inner_1", config=inner_keymaps_hamilt[1])
    VarInpHInner[2] = InstructionVariable.new(name="ham_inner_2", config=inner_keymaps_hamilt[2])

    # --- Build instruction groups (micro ops)
    instruction_groups: Dict[Tuple[str, str, str], InstructionGroup] = {}
    for t_pattern, operations in commutate_operations.items():
        instructions: List[BiLinearOperationInstruction] = []

        len_r, len_h, len_t = map(lambda x: x.count("X"), t_pattern)
        target_variable = VarTargInner[len_t]
        rho_variable = VarInpRInner[len_r]
        ham_variable = VarInpHInner[len_h]

        for (src1_key, src2_key), operation in operations.items():
            for tgt_key, factor in operation:
                # IMPORTANT:
                # - In REAL_ONLY mode we use FortranRA (real arrays). The Pauli commutator factor is
                #   typically purely imaginary (e.g. ±2j). Multiplying by 1j makes it real (±2), but
                #   the Python type would still be `complex` (e.g. -2+0j). Phoenix codegen for real
                #   backends expects a real float here.
                if real_only:
                    coeff = float((factor * 1j).real)
                else:
                    coeff = factor

                instructions.append(
                    BiLinearOperationInstruction(
                        target_variable(tgt_key),
                        rho_variable(src1_key),
                        ham_variable(src2_key),
                        coeff,
                    )
                )

        instruction_groups[t_pattern] = InstructionGroup(instructions)

    # --- Build per-pattern libroutines and summary commutate
    libroutines = {}

    for num, (t_pattern, cases) in enumerate(commutate_cases.items()):
        environments = []
        for (rho_nums, ham_nums, res_nums) in cases:
            environments.append(
                InstructionEnvironment(
                    {
                        VarInpRInner[len(rho_nums)]: VarRho(rho_nums),
                        VarInpHInner[len(ham_nums)]: VarHam(ham_nums),
                        VarTargInner[len(res_nums)]: VarRes(res_nums),
                    }
                )
            )

        these_instructions = [
            MapApplyInstruction(
                content=instruction_groups[t_pattern],
                environments=environments,
            )
        ]

        lr_name = f"commutate_{num:03d}"
        lr = my_library.libroutine_from_instructions(
            lr_name,
            *these_instructions,
            daa_assignments=daa_assignments,
        )
        libroutines[lr_name] = lr

    call_collection = [CallInstruction(lr) for lr in libroutines.values()]
    my_library.libroutine_from_instructions(
        "commutate",
        *call_collection,
        daa_assignments=daa_assignments,
    )

    # --- Emit Fortran
    my_library.build()

    # --- Import/compile f2py module
    mod = None

    def _try_import_module():
        try:
            return importlib.import_module(py_module_name)
        except Exception:
            return None

    if not recompile:
        mod = _try_import_module()

    if mod is None:
        # Numpy f2py (>=2.0) uses a meson backend by default and may promote some
        # Fortran warnings (e.g. line truncation) to errors. We explicitly disable
        # line-length warnings and also set free-line-length-none.
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
            # Fallback to legacy distutils backend (often more permissive)
            env2 = env.copy()
            env2["NPY_F2PY_BACKEND"] = "distutils"
            ret2 = subprocess.run(cmd, env=env2)
            if ret2.returncode != 0:
                raise RuntimeError(
                    f"f2py compilation failed (meson rc={ret.returncode}, distutils rc={ret2.returncode}). "
                    f"Try installing gfortran and/or ensure flags allow long free-form lines."
                )

        mod = _try_import_module()
        if mod is None:
            raise RuntimeError(
                f"f2py build succeeded but python cannot import module {py_module_name!r}. "
                f"Check your PYTHONPATH / build directory."
            )

    # --- Wrap
    # f2py may expose routines either at top-level (mod.commutate) or nested under
    # a Fortran module attribute (e.g. mod.<fortran_module>.commutate).
    def _resolve_lib_with_routine(root, routine_name: str):
        if hasattr(root, routine_name):
            return root
        # Search one level deep for a submodule/object that contains the routine
        candidates = []
        for attr in dir(root):
            if attr.startswith("__"):
                continue
            obj = getattr(root, attr)
            if hasattr(obj, routine_name):
                candidates.append(attr)
        if len(candidates) == 1:
            return getattr(root, candidates[0])
        if len(candidates) > 1:
            raise RuntimeError(
                f"f2py module {py_module_name!r} exposes {routine_name!r} in multiple places: {candidates}. "
                f"Set py_module_name/lib_basename uniquely or refine resolver."
            )
        # Nothing found: show helpful info
        public = [a for a in dir(root) if not a.startswith("__")]
        raise RuntimeError(
            f"f2py module {py_module_name!r} has no attribute {routine_name!r}. "
            f"Top-level public attributes: {public[:60]}{'...' if len(public)>60 else ''}"
        )

    wrapper_root = _resolve_lib_with_routine(mod, "commutate")
    wrapper_lib = PyWrapperLibrary(my_library, wrapper_lib=wrapper_root)
    commutate = wrapper_lib.create_wrapper("commutate")

    return commutate, System_ADAA, Hamilton_ADAA, system_keymap, hamilton_keymap
