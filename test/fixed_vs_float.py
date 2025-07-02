import time
import numpy as np

# N = 10_000_000

# # float32 benchmark
# a_real = np.random.rand(N)
# b_real = np.random.rand(N)
# start = time.perf_counter()
# c_real = a_real * b_real
# stop = time.perf_counter()
# print("float32:", stop - start)

# # fixed-point: Q1.15 stored as int16
# a_fixed = (a_real * (1 << 31)).astype(np.int64)
# b_fixed = (b_real * (1 << 31)).astype(np.int64)
# start = time.perf_counter()
# p_fixed = a_fixed * b_fixed
# c_fixed = p_fixed >> 31
# stop = time.perf_counter()
# c_fixed = c_fixed / (1 << 31)
# print("fixed-point:", stop - start)

# a_float = (a_fixed / (1 << 31)).astype(np.float32)
# b_float = (b_fixed / (1 << 31)).astype(np.float32)
# c_float = a_float * b_float


# print(c_real)
# print(c_float)
# print((c_float * (1 << 31)).astype(np.int32) / (1 << 31))
# print(c_fixed)


import numpy as np
import fixed_mul
import sys


# Prepare Q1.15 fixed-point numbers
def float_to_fixed_64(x):
    return np.round(x * (1 << 63)).astype(np.int64)


def fixed_to_float_64(x):
    return x.astype(np.float64) / (1 << 63)


def float_to_fixed_32(x):
    return np.round(x * (1 << 31)).astype(np.int32)


def fixed_to_float_32(x):
    return x.astype(np.float32) / (1 << 31)


def time_select(list_of_values):
    return sum(list_of_values), min(list_of_values), max(list_of_values)


PRINT_REPORT = False
NREPS = 100


#  1        N
#  2  3  4  Fixed
#  5  6  7  Fixed special
#  8  9 10  NUMPY
# 11 12 13  FLOAT FORTRAN


# offs = 0
# plot "performance_fixedpoint.data" u 1:(column(2+offs)) w lp lw 2 title "fixed INT", "" u 1:(column(5+offs)) w lp lw 2 title "fixed ints", "" u 1:(column(8+offs)) w lp lw 2 title "float NumPy", "" u 1:(column(11+offs)) w lp lw 2 title "float Fortran"

# offs=0 : min
# offs=1 : mean
# offs=2 : max

for n_exp in range(16, 100):
    diffs = []
    N = int(2 ** (n_exp / 4))
    if PRINT_REPORT:
        print(f"N = {N}")
    a = np.random.uniform(0, 1, N).astype(np.float64)
    b = np.random.uniform(0, 1, N).astype(np.float64)

    a_fixed = float_to_fixed_64(a)
    b_fixed = float_to_fixed_64(b)
    result_fixed = np.empty_like(a_fixed).astype(np.int64)
    reference2 = np.empty_like(a).astype(np.float64)

    # Call Fortran fixed-point multiply
    # print(fixed_mul.fixed_mul.__doc__)

    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        fixed_mul.fixed_mul2(a_fixed, b_fixed, result_fixed, N)
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("fixed 64:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    # Convert back to float for validation
    result_float = np.abs(fixed_to_float_64(result_fixed))

    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        fixed_mul.fixed_mul2(a_fixed, b_fixed, result_fixed, N)
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("fixed 64 special:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    # Convert back to float for validation
    result_float_special = np.abs(fixed_to_float_64(result_fixed))

    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        expected = a * b
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("reference 64:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    # Compare with float64 multiplication
    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        fixed_mul.float_mul2(a, b, reference2, N)
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("reference 64 F:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    max_error = np.max(np.abs(expected - result_float))
    max_error_special = np.max(np.abs(expected - result_float_special))

    if PRINT_REPORT:
        print("Max absolute error 64        :", max_error)
    if PRINT_REPORT:
        print("Max absolute error 64 special:", max_error_special)

    a = np.random.uniform(0, 1, N).astype(np.float32)
    b = np.random.uniform(0, 1, N).astype(np.float32)

    a_fixed = float_to_fixed_32(a)
    b_fixed = float_to_fixed_32(b)
    result_fixed = np.empty_like(a_fixed).astype(np.int32)

    # Call Fortran fixed-point multiply

    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        fixed_mul.fixed_mul(a_fixed, b_fixed, result_fixed, N)
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("fixed 32:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    # Convert back to float for validation
    result_float = np.abs(fixed_to_float_32(result_fixed))

    # Compare with float32 multiplication
    time_collect = []
    for rep in range(NREPS):
        start = time.perf_counter()
        expected = a * b
        stop = time.perf_counter()
        time_collect.append(stop - start)
    timed_sum, timed_min, timed_max = time_select(time_collect)

    if PRINT_REPORT:
        print("reference 32:", timed_sum)
    diffs.append(timed_min)
    diffs.append(timed_sum / NREPS)
    diffs.append(timed_max)

    max_error = np.max(np.abs(expected - result_float))

    if PRINT_REPORT:
        print("Max absolute error 32:", max_error)

    if PRINT_REPORT:
        print("-" * 20 + "\n")
    else:
        print("\t".join(map(str, [N] + diffs)))
    sys.stdout.flush()
