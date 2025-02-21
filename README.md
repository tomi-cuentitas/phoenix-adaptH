# PHOENIX

## Introduction

## 
The **PHOENIX** library (**P**arallel **H**ybrid **O**perations for **E**nhanced **N**umerical **I**mplementations and e**X**ecutions*) provides modules, routines and classes to simplify and unify the communication between python and various backends that either focus on high-performance computation (HPC), interfacing with other tools and procedures (INT) or code and procedure analysis (ANA).

## Backends
As of now, the following backends are under implemented, under development, planned or considered.

#### PlainText (INT/ANA) *under development*
The plain text implementation is aimed for an analysis of the generated procedures, either for debugging or investigation. Another purpose of plain text output is the ability to generate text that can be parsed from other platforms that are not implemented.

#### PurePython (INT/ANA) *under development*
As the plain text implementation, pure python is not strong on the optimization but instead aimed for compatibility with preexisting routines. Another use case is the creation of a python syntax tree, which is parsed by many JIT-compilers and interpreted in backpropagation in ML contexts.

#### CUDA (HPC) *planned*
CUDA is the GPU platform provided by NVidia and enables high-parallel implementations on NVidia-GPUs.

#### FORTRAN (HPC) *planned*
The FORTRAN backend is a HPC backend, that provides a high compatibility with numpy but still  leads tailored FORTRAN Code that executes fast.

#### NumPy (INT/HPC) *planned*
While FOTRAN has a high compatibility with NumPy already, this backend will cover that family of applications, where using numpy on the spot provides advantages

#### OpenCL (HPC) *planned*
OpenCL provides access to parallel-CPU and also GPU features that are independent of the manufacturer. While the CPU-features are not tackled, OpenCL will support GPU parallelization also for non-NVidia GPUs such as those from AMD or Intel.

#### Julia (INT/ANA) *considered*
The Julia backend can output a Julia module that can be used in the Julia language. 

#### Matlab (INT/ANA) *considered*
The Matlab backend can output a Matlab module that can be used in the Matlab language.

#### Cython (INT) *considered*
Cython is a dialect of python that is closer to its underlying C machinery. It provides a performance boost at the cost of a loss of dynamic typing, which should not provide an issue with a statically typed library.

#### C/C++ (INT) *considered*
The C/C++ backend provides C implementations. 


## Datatypes

#### ADAA
The fundamental datatype holding state and operator data is called **A**ligned **D**ata **A**ccess **A**rray (**ADAA**). As the name suggests, array-like data is split into aligned fundamental components. A simple example is a complex-valued array that can be split into its real and imaginary part. Real and imaginary part are aligned in the sense that the `i`'th entry in both of them combines to the complex value that you see in position `i` of the original complex array. A more sophisticated example is a linear combination of Pauli strings. In a system of $n$ spins, each summand is composed from a scalar coefficient and an identifier for the Pauli string. While the coefficient is defined by a complex or even simply real number, each spin contributes a choice from 4 symbols to a kronecker product, which can be encoded in a `2n`-bit integer. Without going into detail about how this integer is processed further, the advantage of the aligned access over summand classes is at hand.

#### KeyMaps
KeyMaps provide the framework to use symbols instead if indices to define and express operations that are carried out on our data. Under the hood, the KeyMap class manages the linearization of data such that any key points to an index in an array and vice versa. This allows us to formulate operations on readable components without the requirement of keeping track of the details on how the data is ultimately stored. To build on aboves example, the Pauli algebra is not as straight forward as a simple matrix multiplication. Using symbols, we can define keys as 0, x, y and z and define the algebra in terms of these symbols, which is internally transformed into a map to 0, 1, 2 and 3. At the small scale, this seems rather unneccessary, but once multiple spins or groups of them are handled, the rules are easier to be formulated this way.

#### Instruction
Instructions are the building blocks of routines. Historically they were built upon keymaps, but their design doesn't require that anymore. An example for such a building block is a term in an affine transform. For an input `x`, return `y` from `y[i]=a*x[j] + b`. The instruction stores the values of `a` and `b` as well as some information on what entry `j` of `x` is considered as input value and what entry `i` in `y` it is written to.
The affine instruction type from the previous section can be generalized into polynomials as `y[ai]=a0 + a1*x[j] + a2*x[j]**2 + ...` or specified as linear operations `y[i]=a*x[j]`. This is expressed in a class hierarchy, so linear is a subclass of affine, which is a subclass of polynomial. When the instruction sets are translated into compilable code or optimized, this is taken into account such that the most specific compatible implementation is used, while not every subclass has to be implemented in the backends. For example, if the CUDA backend only implements affine instructions, then linear instructions are automatically used as a subclass, while polynomial instructions are not supported.
Instructions can be grouped, regrouped and organized into **InstructionGroups**. Groups take the type of the most specific instruction that is still a parent class of all instructions in the group, so a group made from linear and affine operations is affine. 
Instructions can also be subject to an **InstructionEnvironment**. Within an environment, variables used in instructions might be reinterpreted based on the environmental context.
As an example, consider a keymap-based scenario, and we consider the space of all 6 pairs of Pauli matrices that can be formed from 4 sites. We want to implement a multiplication of two Pauli operators `P_out = P_in1 * P_in2` and focus on the combinations of terms within the pauli operators, where the subspace of the right component of input 1 is the same as the subspace from the left component in input 2, i.e. we are interested in input subspaces 12,23, 12,24, 13,34 and 23,34. The result of that operation can either be in one of the subspaces 123, 124, 134 or 234 if the overlapping pauli components are different, or from the subspaces 13, 14 or 23 if they are identical (this neutralization is a feature of the pauli algebra). For simplicity, let us consider the identical case, so a combination of pairs and pairs maps again into pairs. Once we focus on a certain set of pairs for input and output, we basically carry out the same instructions as with all the other sets: the pauli components `xx,xx`, `xx,xy`, etc., are evaluated in the context of their placement in the considered subspaces. So `12:yx,23:xz` in the 4-spin environment is inflatable to `yx00*0xz0` and evaluates to `y0z0`, or `13:yz`, and this is true for all subspace sets that follow our construction law: `ab:yx,bc:xz->ac:yz` for all tuples (ab,bc,ac) from our little universe.
That motivates the introduction of environments, in this special case an offset environment. We investigate the instructions for pairs that have overlapping subspaces as above and apply what we have learned to all valid offset tuples in our input and output variables.

#### LibRoutines
Except compactness and convenience, this approach implies, how the implementation can be carried out efficiently. LibRoutines are actual library routines in some (programming) language, that implement the instructions as described above. OffsetEnvironments can hint applicable parallelization, if the language allows for it. InstructionsGroups can indicate, that it migth be advantageous to summarize a set of instructions in an auxiliary routine or put it into a block inside a loop structure, or compile a GPU kernel from it. The charme of this library is, that the instruction language is universal and almost symbolic, and the same set of instructions can lead to various implementations in various backends, based on choices, parameters and optimization.
LibRoutines are available in python again, so a Routine designed for certain input and output ADAAs can be called with instances of these specific ADAA classes as input and output arguments.
Some transfer-backends form an exception here. Matlab and Julia, once implemented, are to be considered as standalone libraries. As of now, the goal is to provide routines and equivalents to ADAAs in the language, so python-phoenix can be used to, for example, generate a matlab m file that generates the routines and provides ADAA classes, to be imported somewhere else in matlab.
