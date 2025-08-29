# PHOENIX

## Introduction
The **PHOENIX** library (**P**arallel **H**ybrid **O**perations for **E**nhanced **N**umerical **I**mplementations and e**X**ecutions*) provides modules, routines and classes to simplify and unify the communication between python and various backends that either focus on high-performance computation (HPC), interfacing with other tools and procedures (INT) or code and procedure analysis (ANA).

## Backends
As of now, the following backends are under implemented, under development, planned or considered.

### PlainText (INT/ANA) *under development*
The plain text implementation is aimed for an analysis of the generated procedures, either for debugging or investigation. Another purpose of plain text output is the ability to generate text that can be parsed from other platforms that are not implemented.

### PurePython (INT/ANA) *planned*
As the plain text implementation, pure python is not strong on the optimization but instead aimed for compatibility with preexisting routines. Another use case is the creation of a python syntax tree, which is parsed by many JIT-compilers and interpreted in backpropagation in ML contexts.

### CUDA (HPC) *planned*
CUDA is the GPU platform provided by NVidia and enables high-parallel implementations on NVidia-GPUs.

### FORTRAN (HPC) *under development*
The FORTRAN backend is a HPC backend, that provides a high compatibility with numpy and provides tailored FORTRAN Code that executes fast.

### NumPy (INT/HPC) *planned*
While FOTRAN has a high compatibility with NumPy already, this backend aims to implement procedures via numpy array operations.

### OpenCL (HPC) *considered*
OpenCL provides access to parallel-CPU and also GPU features that are independent of the manufacturer. While the CPU-features are not tackled, OpenCL will support GPU parallelization also for non-NVidia GPUs such as those from AMD or Intel.

### Julia (INT/ANA) *considered*
The Julia backend can output a Julia module that can be used in the Julia language. 

### Matlab (INT/ANA) *considered*
The Matlab backend can output a Matlab module that can be used in the Matlab language.

### Cython (INT) *considered*
Cython is a dialect of python that is closer to its underlying C machinery. It provides a performance boost at the cost of a loss of dynamic typing, which should not provide an issue with a statically typed library.

### C/C++ (INT) *considered*
The C/C++ backend provides C implementations. 


## Datatypes

### ADAA
The fundamental datatype holding state and operator data is called **A**ligned **D**ata **A**ccess **A**rray (**ADAA**). As the name suggests, array-like data is split into aligned fundamental components. A simple example is a complex-valued array that can be split into its real and imaginary part. Real and imaginary part are aligned in the sense that the `i`'th entry in both of them combines to the complex value that you see in position `i` of the original complex array. A more sophisticated example is a linear combination of Pauli strings. In a system of $n$ spins, each summand is composed from a scalar coefficient and a product of Pauli operators that can be well represented by a string of symbols, the Pauli string. While the coefficient is defined by a complex or even simply real number, each spin contributes a one of 4 symbols to a kronecker product, which can be encoded in a `2n`-bit integer. Without going into detail about how this integer is processed further, the advantage of the aligned access over summand classes is at hand.

### KeyMaps
KeyMaps provide the framework to use symbols instead if indices to define and express operations that are carried out on our data. Under the hood, the KeyMap class manages the linearization of data such that any key points to an index in an array and vice versa. This allows us to formulate operations on readable components without the requirement of keeping track of the details on how the data is ultimately stored. To build on aboves example, the Pauli algebra is not as straight forward as a simple matrix multiplication. Using symbols, we can define keys as 0, x, y and z and define the algebra in terms of these symbols, which is internally transformed into a map to 0, 1, 2 and 3. At the small scale, this seems rather unneccessary, but once multiple spins or groups of them are handled, the rules are easier to be formulated this way.

### Instruction
Instructions are the building blocks of routines. An example for such a building block is a term in an affine transform. For an input `x`, return `y` from `y[i]=a*x[j] + b`. The instruction stores the values of `a` and `b` as well as some information on what entry `j` of `x` is considered as input value and what entry `i` in `y` it is written to.
The affine instruction type from the previous section can be generalized into polynomials as `y[ai]=a0 + a1*x[j] + a2*x[j]**2 + ...` or specified as linear operations `y[i]=a*x[j]`. This is expressed in a class hierarchy, so linear is a subclass of affine, which is a subclass of polynomial.
Instructions can be grouped, regrouped and organized into **InstructionGroups**. 
Instructions can also be subject to an **InstructionEnvironment**. Within an environment, variables used in instructions might be reinterpreted based on the environmental context. An abstract example what is meant here: an instruction accessing the x component of some set of entries can execute in the environment of set A, B and C, that all provide an x component. 

### LibRoutines
Ultimately we want to get Libroutines. These represent the compiled code in a library and stores some meta information on how it is supposed to be called or handled. On the way from instructions to libroutines, a **Builder** will interpret instructions and generate CodeContainers from them. These containers form a tree-like data structure and can either directly provide code or refer to other containers.


## Tutorials
I have provided some example scripts that demonstrate the use of this library.
They provide lots of comments and can help you as a starting point for your own implementations.

You can find all the example scripts in the example folder in the project.

### get to know keymaps
This tutorial provides an introduction to keymaps. How can you add keys and entries and how can you put keymaps in keymaps to design your data structures exactly how it is convenient for you.

### get to know instructions
Some first instructions via an example of hermitean matrix commutation based on a matrix representation of pauli matrices.

### my first library
A first library is derived based on the previous instructions. Also the wrapper class is introduced that avoids the mess with the f2py reimports and mappings of the operators. Here you can also come in touch with ADAAs, the data operators that are intended for the use with this library.

### my first library continued
See how environments can help you to reapply your code in various locations in memory. Get to know the MapApplyInstruction and see the difference between unrolled loops and MapApply loops. The MapApplyInstruction is rather central, as it will provide some straight forward entry point to implement parallel code in all considered platforms.

### test_fortran_builder_comm2.py
As of now, this is the last script in the tutorial section, and the name already implies, that his originated from a test routine that was extended by many explanatory comments.
I use truncated Pauli subspaces to simulate multi spin dynamics. See how I use multiple auxilliary routines to structure all required operations to perform a commutation operation. This combines all of the above: hierarchical keymaps, environments and a proper instruction design.