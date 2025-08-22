# Background

## Origins

The **phoenix** library began as part of my work on _Pauli subspace truncation_. In that project, I needed to handle extremely large numbers of arithmetic operations on array entries. Simply unrolling the operations into plain loops was not feasible — the size easily exceeded what most computers (including mine) could manage.

To address this, I organised operations hierarchically and expressed them in a compilable language such as Fortran or CUDA. This approach made it possible to run otherwise intractable computations efficiently.

## From Pauli truncation to sparse tensors

The same approach can be understood as working with **sparse tensors** in coordinate form:

- Instead of representing the entire tensor, we only store non-zero entries along with their coordinates.
- This is highly efficient when most entries are zero.
- Of course, it becomes inefficient if the tensor is dense.

In my use case, sparsity was the norm, so a coordinate-based representation was the natural choice.

## Why keymaps?

Working directly with numeric indices quickly became unreadable. For example, in my spin models, I wanted to label coefficients by tuples like `(2,5,7):xxz`, not by a cryptic integer such as `28574`.

This motivated the introduction of **keymaps**, which translate human-readable keys into internal indices. Keymaps are recursive: a key like `(2,5,7)` gives you a sub-keymap, and within that sub-keymap you can access `xxz`. This recursive design makes it possible to compose structured keys in a natural way.

## Abstract instructions

Once keys existed, the next step was to define **instructions**: abstract arithmetic operations that reference entries by key, not index. For example, I might want to express:

`C((2,7), zz) += i * A((2,5,7), xxz) * B((2,5), yx)`

At this stage, nothing is tied to an actual array or datatype. The variables `A`, `B`, and `C` are abstract _instruction variables_. Their internal storage (real vs. complex, CPU vs. GPU, single vs. double precision, etc.) is an implementation detail deferred until code generation.

This abstraction turned out to be powerful: the same high-level description can later generate efficient low-level code in multiple target languages.

## The role of environments

In practice, the same inner instruction often repeats across many similar contexts. For example, a Pauli algebra multiplication for one subset of spins applies equally to all subsets of the same structure.

To capture this, I introduced **environments**: partial traversals of a keymap that define a “local perspective” for instructions. Within an environment, the same instruction can be reapplied in different contexts. This reduces redundancy and opens the door to parallelisation.

## A note on Pauli algebra

The original problem that inspired phoenix was to compute truncated products of Pauli operators. For example:
$$ \Delta C_{zz}^{(27)} \sigma_z^2 \sigma_z^7 = A_{xxz}^{(257)}\, \sigma_x^2 \sigma_x^5 \sigma_z^7 \,\cdot\, B_{yx}^{(25)}\, \sigma_y^2 \sigma_x^5  = i\, A_{xxz}^{(257)} C_{yx}^{(25)}\, \sigma_z^2 \sigma_z^7 $$
The bookkeeping required to manage which terms survive the truncation, and how they are indexed, is exactly the kind of complexity that **phoenix** automates. While you don’t need to care about Pauli algebras to use the library, this example illustrates the level of combinatorial structure phoenix was designed to tame.