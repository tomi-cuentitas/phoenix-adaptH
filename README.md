# phoenix

## Parallel Hybrid Operations for Enhanced Numerical Integrations and eXecutions

The **phoenix** library provides modules to simplify and unify the communication between python and various
high-performance computation (HPC) backends implemented in languages such as
- CUDA (planned),
- C (planned),
- FORTRAN (planned),
- OpenCL (planned),
- Cython (planned).

The modules included are
- `keymap`: sparse data can be accessed using identifiers rather than abstract integer indices
- `dtype`: communicate between python and a HPC-backend using a datatype that interfaces both worlds.
- `fgen`: represent multi-linear functions by instruction sets acting on the datatypes.
    - `tomography`: automatize the generation of instructions by testing input combinations
    - `routine`: combine instruction sets and some meta data to have abstract representations of your functions
    - `subroutine`: specify a HPC language and get a subroutine based on a routine

These modules are properly introduced and specified in more detail in the *Modules*-section below.

## Installation

A general dependency is python's well-known `numpy` library that represents any arrays at the python side.
Depending on the different languages the user wants to interface to, the dependencies extend to python modules such as
`ctypes`, `numpy.f2py`, `pycuda|cupy`, `pyopencl`,
external tools as `gfortran|ifort`, `gcc`, `nvcc`
as well as external libraries as
`openmp`
.

These dependencies are checked upon installation. To install the library, simply create a folder at your preferred location. From there, clone the repository via

`git clone https://github.com/MatthiasKost/phoenix`

and locally install it by going to the main directory and make a local installation via
`cd phoenix`
`pip install .`

## Modules

### keymap

The keymap module provides a `Region` class that further inherits to `Keymap` and `Key`.

### dtype


#### dtype.dcontainer


#### dtype.dlayer


### fgen


#### fgen.instruction


#### fgen.tomography


#### fgen.routine


#### fgen.subroutine


#### fgen.library
