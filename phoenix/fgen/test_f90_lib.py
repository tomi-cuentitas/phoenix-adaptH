# import subprocess

# ret = subprocess.call(
#     'f2py3 --verbose -m paulilib -c pauli_library.f90 --f90flags="-ffixed-line-length-512"',
#     shell=True,
# )

# print(ret)


import paulilib

print(dir(paulilib.pauli_library))
