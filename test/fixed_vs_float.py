import time
import numpy as np

N = 10_000_000

# float32 benchmark
a_real = np.random.rand(N)
b_real = np.random.rand(N)
start = time.perf_counter()
c_real = a_real * b_real
stop = time.perf_counter()
print("float32:", stop - start)

# fixed-point: Q1.15 stored as int16
a_fixed = (a_real * (1 << 31)).astype(np.int64)
b_fixed = (b_real * (1 << 31)).astype(np.int64)
start = time.perf_counter()
p_fixed = a_fixed * b_fixed
c_fixed = p_fixed >> 31
stop = time.perf_counter()
c_fixed = c_fixed / (1 << 31)
print("fixed-point:", stop - start)

a_float = (a_fixed / (1 << 31)).astype(np.float32)
b_float = (b_fixed / (1 << 31)).astype(np.float32)
c_float = a_float * b_float


print(c_real)
print(c_float)
print((c_float * (1 << 31)).astype(np.int32) / (1 << 31))
print(c_fixed)


import numpy as np
import fixed_mul


# Prepare Q1.15 fixed-point numbers
def float_to_fixed_64(x):
    return np.round(x * (1 << 63)).astype(np.int64)


def fixed_to_float_64(x):
    return x.astype(np.float64) / (1 << 63)


def float_to_fixed_32(x):
    return np.round(x * (1 << 31)).astype(np.int32)


def fixed_to_float_32(x):
    return x.astype(np.float32) / (1 << 31)


N = 1_000_000
a = np.random.uniform(0, 1, N).astype(np.float64)
b = np.random.uniform(0, 1, N).astype(np.float64)

a_fixed = float_to_fixed_64(a)
b_fixed = float_to_fixed_64(b)
result_fixed = np.empty_like(a_fixed).astype(np.int64)

# Call Fortran fixed-point multiply
# print(fixed_mul.fixed_mul.__doc__)

start = time.perf_counter()
fixed_mul.fixed_mul2(a_fixed, b_fixed, result_fixed, N)
stop = time.perf_counter()
print("fixed 64:", stop - start)

# Convert back to float for validation
result_float = np.abs(fixed_to_float_64(result_fixed))

# Compare with float32 multiplication
start = time.perf_counter()
expected = a * b
stop = time.perf_counter()
print("reference 64:", stop - start)

max_error = np.max(np.abs(expected - result_float))

print(expected)
print(result_float)

print("Max absolute error 64:", max_error)


a = np.random.uniform(0, 1, N).astype(np.float32)
b = np.random.uniform(0, 1, N).astype(np.float32)

a_fixed = float_to_fixed_32(a)
b_fixed = float_to_fixed_32(b)
result_fixed = np.empty_like(a_fixed).astype(np.int32)

# Call Fortran fixed-point multiply
# print(fixed_mul.fixed_mul.__doc__)

start = time.perf_counter()
fixed_mul.fixed_mul(a_fixed, b_fixed, result_fixed, N)
stop = time.perf_counter()
print("fixed 32:", stop - start)

# Convert back to float for validation
result_float = np.abs(fixed_to_float_32(result_fixed))

# Compare with float32 multiplication
start = time.perf_counter()
expected = a * b
stop = time.perf_counter()
print("reference 32:", stop - start)

max_error = np.max(np.abs(expected - result_float))

print(expected)
print(result_float)

print("Max absolute error 32:", max_error)
