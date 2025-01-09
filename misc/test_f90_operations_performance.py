import numpy as np

# from aux_o3 import aux
import timeit
import sys
from matplotlib import pyplot as plt

import importlib

extension = sys.argv[1]

auxmod = importlib.import_module(f"aux_o{extension}")
aux = auxmod.aux

REPS = 5000
SREP = 5
PMAX = 200  # 30
PEXP = 1.051  # 1.25

num_vals = [0 for _ in range(PMAX + 1)]
time_test_loop = [0.0 for _ in range(PMAX + 1)]

time_test_iadd = [0.0 for _ in range(PMAX + 1)]
time_test_fadd = [0.0 for _ in range(PMAX + 1)]
time_test_dadd = [0.0 for _ in range(PMAX + 1)]

time_test_isub = [0.0 for _ in range(PMAX + 1)]
time_test_fsub = [0.0 for _ in range(PMAX + 1)]
time_test_dsub = [0.0 for _ in range(PMAX + 1)]

time_test_imul = [0.0 for _ in range(PMAX + 1)]
time_test_fmul = [0.0 for _ in range(PMAX + 1)]
time_test_dmul = [0.0 for _ in range(PMAX + 1)]

time_test_idiv = [0.0 for _ in range(PMAX + 1)]
time_test_fdiv = [0.0 for _ in range(PMAX + 1)]
time_test_ddiv = [0.0 for _ in range(PMAX + 1)]

time_test_iand = [0.0 for _ in range(PMAX + 1)]
time_test_iior = [0.0 for _ in range(PMAX + 1)]
time_test_ixor = [0.0 for _ in range(PMAX + 1)]

time_test_inot = [0.0 for _ in range(PMAX + 1)]
time_test_ilsh = [0.0 for _ in range(PMAX + 1)]
time_test_irsh = [0.0 for _ in range(PMAX + 1)]
time_test_igsh = [0.0 for _ in range(PMAX + 1)]

# aux.test_dmul([1.0], [1.0], 1)

# pnums = map(int, sys.argv[1:])
# for pnum in [125]:  #
# num = int(PEXP ** (pnum + 90))
# for pnum in pnums:
for pnum in range(1, PMAX + 1):
    num = pnum + 90

    print(pnum, num)

    num_vals[pnum] = num

    int_inp1 = np.random.randint(0, 999, num).astype(np.int32)
    int_inp2 = 1 + np.random.randint(0, 8, num).astype(np.int32)

    flt_inp1 = np.random.random(num).astype(np.float32)
    flt_inp2 = 0.1 + np.random.random(num).astype(np.float32)

    dbl_inp1 = np.random.random(num).astype(np.float64)
    dbl_inp2 = 0.1 + np.random.random(num).astype(np.float64)

    # aux.test_loop(pnum)
    # times = timeit.repeat(
    #     f"dump = aux.test_loop(pnum)", number=SREP, repeat=1_000_000, globals=globals()
    # )
    plain_loop_time = 0  # np.min(times)

    # BASIC ARITHMETICS

    aux.test_iadd(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_iadd(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_iadd[pnum] = np.min(times) - plain_loop_time

    aux.test_fadd(flt_inp1, flt_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_fadd(flt_inp1, flt_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_fadd[pnum] = np.min(times) - plain_loop_time

    aux.test_dadd(dbl_inp1, dbl_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_dadd(dbl_inp1, dbl_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_dadd[pnum] = np.min(times) - plain_loop_time

    aux.test_isub(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_isub(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_isub[pnum] = np.min(times) - plain_loop_time

    aux.test_fsub(flt_inp1, flt_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_fsub(flt_inp1, flt_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_fsub[pnum] = np.min(times) - plain_loop_time

    aux.test_dsub(dbl_inp1, dbl_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_dsub(dbl_inp1, dbl_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_dsub[pnum] = np.min(times) - plain_loop_time

    # EXTENDED ARITHMETICS

    aux.test_imul(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_imul(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_imul[pnum] = np.min(times) - plain_loop_time

    aux.test_fmul(flt_inp1, flt_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_fmul(flt_inp1, flt_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_fmul[pnum] = np.min(times) - plain_loop_time

    aux.test_dmul(dbl_inp1, dbl_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_dmul(dbl_inp1, dbl_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_dmul[pnum] = np.min(times) - plain_loop_time

    aux.test_idiv(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_idiv(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_idiv[pnum] = np.min(times) - plain_loop_time

    aux.test_fdiv(flt_inp1, flt_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_fdiv(flt_inp1, flt_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_fdiv[pnum] = np.min(times) - plain_loop_time

    aux.test_ddiv(dbl_inp1, dbl_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_ddiv(dbl_inp1, dbl_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_ddiv[pnum] = np.min(times) - plain_loop_time

    # LOGICALS

    aux.test_iand(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_iand(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_iand[pnum] = np.min(times) - plain_loop_time

    aux.test_iior(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_iior(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_iior[pnum] = np.min(times) - plain_loop_time

    aux.test_ixor(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_ixor(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_ixor[pnum] = np.min(times) - plain_loop_time

    aux.test_igsh(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_igsh(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_igsh[pnum] = np.min(times) - plain_loop_time

    aux.test_ilsh(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_ilsh(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_ilsh[pnum] = np.min(times) - plain_loop_time

    aux.test_irsh(int_inp1, int_inp2, num)
    times = timeit.repeat(
        f"dump = aux.test_irsh(int_inp1, int_inp2, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_irsh[pnum] = np.min(times) - plain_loop_time

    aux.test_inot(int_inp1, num)
    times = timeit.repeat(
        f"dump = aux.test_inot(int_inp1, num)",
        number=SREP,
        repeat=REPS,
        globals=globals(),
    )
    time_test_inot[pnum] = np.min(times) - plain_loop_time


# sys.exit()

plt.figure(f"basic arithmetic o{extension}")
plt.ylim(-13.6, -13.1)
plt.grid()
plt.plot(
    num_vals[1:], np.log(time_test_iadd[1:]), ".-", linewidth=3, label="iadd"
)
plt.plot(
    num_vals[1:], np.log(time_test_fadd[1:]), ".-", linewidth=3, label="fadd"
)
plt.plot(
    num_vals[1:], np.log(time_test_dadd[1:]), ".-", linewidth=3, label="dadd"
)

plt.plot(
    num_vals[1:], np.log(time_test_isub[1:]), ".-", linewidth=3, label="isub"
)
plt.plot(
    num_vals[1:], np.log(time_test_fsub[1:]), ".-", linewidth=3, label="fsub"
)
plt.plot(
    num_vals[1:], np.log(time_test_dsub[1:]), ".-", linewidth=3, label="dsub"
)
plt.legend()

plt.figure(f"extended arithmetic o{extension}")
plt.ylim(-13.7, -12.5)
plt.grid()
plt.plot(
    num_vals[1:], np.log(time_test_imul[1:]), ".-", linewidth=3, label="imul"
)
plt.plot(
    num_vals[1:], np.log(time_test_fmul[1:]), ".-", linewidth=3, label="fmul"
)
plt.plot(
    num_vals[1:], np.log(time_test_dmul[1:]), ".-", linewidth=3, label="dmul"
)

plt.plot(
    num_vals[1:], np.log(time_test_idiv[1:]), ".-", linewidth=3, label="idiv"
)
plt.plot(
    num_vals[1:], np.log(time_test_fdiv[1:]), ".-", linewidth=3, label="fdiv"
)
plt.plot(
    num_vals[1:], np.log(time_test_ddiv[1:]), ".-", linewidth=3, label="ddiv"
)
plt.legend()

plt.figure(f"logics o{extension}")
plt.ylim(-13.75, -12.8)
plt.grid()
plt.plot(
    num_vals[1:], np.log(time_test_iand[1:]), ".-", linewidth=3, label="iand"
)
plt.plot(
    num_vals[1:], np.log(time_test_iior[1:]), ".-", linewidth=3, label="iior"
)
plt.plot(
    num_vals[1:], np.log(time_test_ixor[1:]), ".-", linewidth=3, label="ixor"
)
plt.plot(
    num_vals[1:], np.log(time_test_igsh[1:]), ".-", linewidth=3, label="igsh"
)

plt.plot(
    num_vals[1:], np.log(time_test_ilsh[1:]), ".-", linewidth=3, label="ilsh"
)
plt.plot(
    num_vals[1:], np.log(time_test_irsh[1:]), ".-", linewidth=3, label="irsh"
)
plt.plot(
    num_vals[1:], np.log(time_test_inot[1:]), ".-", linewidth=3, label="inot"
)


plt.legend()

plt.show()


print(
    """

observations:

optimization level has no real impact on performance for basic arithmetics.
LSHIFT and RSHIFT are suprisingly more performant than ISHFT.
IDIV is significantly worse than RDIV and DDIV, but obviously the operations
cannot be compared.

You can observe an increase in computation time for certain array sizes that
I would explain by cache limitations.

Loop-unroll can increase the performance a little (-funroll-loops)

-ftree-vectorize -funroll-all-loops -fstrict-aliasing -march=native
can increase the performance massively for certain operations
"""
)
