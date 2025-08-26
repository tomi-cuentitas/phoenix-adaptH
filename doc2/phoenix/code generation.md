#code

# I want code. What do you want me to do?

The phoenix library generates compilable code from an abstract representation of your arithmetic operations, namely [[instruction]]s. Instructions are primitive actions such as the affine operation
```y[key_a] = alpha * x[key_b] + beta```. 
Your variables are represented by [[instruction variable]]s, `x` and `y` in this example, that are addressable via [[key]]s, `key_a` and `key_b` in this example. A [[builder]] will read instructions, interpret the keys, derives indices from them and ultimately creates [[code container]]s. 

The phoenix library makes that process automatic. All you need to do is create keymaps for your input and output variables, derive instruction variables from them and ultimately collect all instructions required for your operation.

# How is code represented internally?

The target object is a [[libroutine]], which is an reference to some code that represents your instructions in a compilable language. Libroutines are embedded in [[library|libraries]] and provide a main code container that defines a function that executes your instructions.

Code containers are linked and embedded in each other to form a tree-like data structure. If a code container requires a variable, it is passed up the tree until it is captured in a capture container, that provides it for definition, initialization or as an argument to a function. 

Some containers provide namespace nodes that guarantee, that names are unique in containers nested inside the corresponding container. This also ensures, that local variables such as loop counters can be reused.

As an example, consider the above example, ```y[key_a] = alpha * x[key_b] + beta```.  This instruction obviously requires the instruction variables `y` and `x`.  Once the code containers are built from the instruction, the request for the instruction variables `y` and `x` is passed up the container tree until it meets the function definition layer, where the roles of `y` and `x` are investigated. This typically leads to `y` and `x` being arguments to the function call. 
As this specific instruction combines specific entries of the arrays `x` and `y`, the indices where you find `key_a` and `key_b` in the associated keymaps are also evaluated. Typically, the constant scalar values alpha and beta are hard coded in the codeline.

# So what is the workflow here?

While best illustrated in an example, the general workflow is

1) Create a library object (to collect your libroutine).
2) Create keymaps that you define your problem on
3) Create Instruction Variables as inputs and outputs, that are defined on these keymaps.
4) Create Instructions, that represent all arithmetic operations required for your task.
5) Pass them to the library's libroutine creation routine and associate input and output roles to the instruction variables.
6) build the libroutine, which will create the code.
7) Compile the code (supposed to be automatically as well) and create a wrapper to reuse your compiled routine in python.


