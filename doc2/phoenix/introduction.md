# What is this all about?

## Introduction
The phoenix library is a python library to implement complex numerical operations efficiently and performantly. The library takes any operation in the form of a potentially large set of arithmetic array entry operations and generates an external library from it. This library is compiled and reimported into python.

As the author, I want give you a brief overview how and why the library was created and how it evolved into the state it is now, while casually throwing in lingo that has established over time.

## How it all started
At first, it started as a generalization from my Pauli subspace truncation approach. To implement my approach, it was crucial to collect and organize a large number of arithmetic operations on array entries and organize them hierarchically, as the plain unrolled number of operations exceeded what was managable by most computers, especially all of those that I had access to. I want to group and organize these operations and, ultimately, express them in a compilable language such as Fortran or CUDA to handle large numerical efforts within reasonable performance. 

The approach can also be seen as an implementation for operations on sparse tensors in coordinate form. This means, that a matrix, or more general, a tensor, can be expressed in a way, that the non-zero entries are explicitely listed, together with the index, or coordinate, that locates it within the tensor. In sparse tensors, the non-zero entries are rare compared to the zeros, wich makes this representation efficient. And, of course, at the same time inefficient, when this requirement is not fulfilled.

# Getting you started ASAP
## The introduction of keymaps
In many frameworks it is more convenient to address array entries by readable keys rather than plain enumeration. For example, in my truncated Pauli subspaces, it was clearly more readable to address coefficients via a tuple of spin indices and a compressed Pauli strings. Therefore, the library was created to also provide the translation of readable key-based access to internal indices. To elaborate on this example, in the context of my work it was absolutely clear to me, what the key (2,5,7):xxz meant and at no time I wanted to explicitely require the information, that this key corresponds to entry number 28574.

This introduces the first concept and some lingo. I have introduced [[keymap]]s, which map [[key]]s to indices. The interesting thing is, that keymaps work recursively, so I can nest keymaps.
With respect to the previous example, that means that the most outer keymap provides another keymap when traversing to (2,5,7). The provided keymap itself can address xxz, where you ultimately find an entry, which is internally evaluated to an index such as 28574. The ability to nest keymaps impies the ability to compose a key from multiply keys, indicated by the colon.

## How can I get code from that?
The second concept is the generalization from instructions to code. As hinted before, an [[instruction]] is a simple arithmetic operation that works with keys rather than indices. It is fully abstract from the language that the instruction is later translated into. To give another example, beneath some million other operations, I might want to multiply whatever entry (2,5,7):xxz refers to in input array A with whatever entry (2,5):yx refers to in input array B, and I want to multiply that with $i$ and then add the result to whatever entry (2,7):zz refers to in the output array C. The instruction is a bilinear and can be written as 
```BL{C[(2,7):zz], A[(2,5,7):xxz], B[(2,5):yx], i}```
You might recognize this as a multiplication on a Pauli algebra in a system on many spins, where we focus on the subspace of the spins 2, 5 and 7 and omit identities of non-participating spins, i.e.
$$ \Delta C_{zz}^{(27)} \sigma_z^2 \sigma_z^7 = A_{xxz}^{(257)}\, \sigma_x^2 \sigma_x^5 \sigma_z^7 \,\cdot\, B_{yx}^{(25)}\, \sigma_y^2 \sigma_x^5  = i\, A_{xxz}^{(257)} C_{yx}^{(25)}\, \sigma_z^2 \sigma_z^7 $$
In the truncated subspace approach I have omitted any contributions from Pauli terms that require more than $k$ operators to be expressed. Without going into detail, why and under what circumstances this is a valid approximation, I want to make clear, that the required instructions for e.g. a multiplication can essentially be read from the keys directly, while the corresponding indices change every time I reconsider the threshod $k$, change the number of spins or imply additional compression rules. The most challenging part in this approach is therefore the bookkeeping, and the keymap hides away that complexity quite nicely.

[[code generation|Turning that into code]] is straight forward. Lets assume, the keymaps can tell me that I find (2,5,7):xxz at 28574, (2,5):yx at 3198 and (2,7):zz at 3566. This instuction will boil down to something like `C[3566] += i * A[28574] * B[3198]`.
But we can do better than that. In the subspace of 2, 5 and 7, input A contributes to all three spins (257), input B to the first two (25, not 7) and the result lives in the first and third (27, not 5).
The Pauli algebra does not care what numbers the spins have. After padding the left out Pauli terms with 0s, the algebra dictates xxz \* yx0 = i z0z, for any subspace of three spins. So we repeat this inner instruction for any group of spins, that match the pattern, which automatically simplifies the amount of code I have to remember, at the cost of introducing loops.

## Environments and what they are used for
How do we introduce the offsets, that are addressed by such a loop? Sticking to the lingo of the library, we introduce [[environment]]s, which means that you partially traverse on the keymap that you are on right now, and execute an operation as seen from wherever you land. In the above example, we establish the environment `ENV{D=A[(2,5,7)], E=B[(2,5)], F=C[(2,7)}` and then execute  the bilinear operation `BL{F[zz], D[xxz], E[yx], i)`. To cover all relevant operations, we only establish more environments but reapply the same instruction from within it.

## An example, please!
I have added a [[paulimul example|commented script]] on pauli multiplication among the [[example scripts]] that demonstrates, how keymaps are generated, how the instructions are derived and how I use environments to decouple the inner operation dictated by the Pauli algebra from the set of applicable environments dictated by the spin setup. The example section however also provides detailed examples on the individual classes such as [[example keymaps|keymaps]] or [[example instructions|instructions]].


# Where to read next
The section on [[code generation]] gives more details, what happens internally after [[instruction]]s are grouped, [[environment]]s are defined and a [[builder]] makes a [[library]] from that, where the instruction set is represented as a [library routine](libroutine.md). 

