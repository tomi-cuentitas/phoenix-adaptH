class _Testthingy:
    __slots__ = ["_keys", "_something"]

    def __init__(self, *keys):
        self._keys = keys
        self._something = "foobar"

    @property
    def keys(self):
        return self._keys


def factorial(n):
    if n > 0:
        return factorial(n - 1) * n
    return 1


from multiprocessing import Pool
from time import perf_counter

args_pure = [tuple([1 + kk for kk in range(2)]) for _ in range(1000)]
args_testthingy = [_Testthingy(*keys) for keys in args_pure]


def handle_class(thingy):
    return sum(factorial(key) for key in thingy.keys)


def handle_pure(thingy):
    return sum(factorial(key) for key in thingy)


class_time = []
pure_time = []

for _ in range(100):
    t0 = perf_counter()
    with Pool(16) as pool:
        pool.map(handle_class, args_testthingy)
    t1 = perf_counter()
    with Pool(16) as pool:
        pool.map(handle_pure, args_pure)
    t2 = perf_counter()

    class_time += [t1 - t0]
    pure_time += [t2 - t1]


import numpy as np

print(sum(class_time), sum(pure_time))
print(np.median(class_time), np.median(pure_time))
print(np.mean(class_time), np.mean(pure_time))
print(np.min(class_time), np.min(pure_time))
print(np.max(class_time), np.max(pure_time))
