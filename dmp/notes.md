# Notes

## Classes and More

### DContainer and DLayer

While the initial idea was to have a DType class to pair host data with the representation of that data on one of the backends, it seems more practical to introduce the DLayer class as a representation of the data within a certain backend representation. One or more of these Layers can be contained in a DContainer, which is in charge of syncing and proper calls. The unpack call at a DContainer instance shall have an argument to identify the requested layer, forwarding the unpack call into the layer.

DLayers can be created from a class factory monad by passing the data configuration of the layer together with an identifier, e.g. 

`MyLayerClass = LayerFactory("f90", real="float64", imag="float64")`,

where "f90" identifies the representation being specific to a FORTRAN90 backend, containing the variables real and imag with the corresponding datatypes.

Layers can but do not have to be consistent in size. Born from the idea, that the datatype has the job to sync between host and device data representations, I failed to see the potential generalization at first. Summarizing an n-spin system into a smaller representative system could be interesting to do as well, this could be implemented as multiple layers within a container. 
Going down that road, any multilayer operation requires the rigurous definition of transfer functions between the layers. To handle sync, there should be a dict (or some other sort of dependency graph) where all the identifiers are listed that require updating when one of them is marked as changed, together with the corresponding routine to do so.

The original case of a pair of host and device data refs can be inherited from here. Sync functions can be predefined in that case. I think of DataContainer (inherits to) DualContainer (inherits to) DualContainerF90, DualContainerCuda, ....


### Callable is now Subroutine

To avoid name collisions with builtins, the module callable and the class Callable are now the module subroutine and the class Subroutine.