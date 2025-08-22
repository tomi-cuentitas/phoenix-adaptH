#class #wrapper

**ADAA** is short for **A**ligned **D**ata **A**ccess **A**rray. As of now, this is the only data structure to handle data from various [[backend]]s implemented in the library, but I kept it as an option, to generalize to
**DAA**s, which would not be restricted to the aligned scheme.

ADAAs have complex data stored in simple internal 1D floating point or integer arrays. An entry in the ADAA will be found in all of the internal arrays at the same index. A simple example are complex arrays. They can be mapped to two real arrays, where one of them represents the real and the other one the imaginary part. 

ADAAs support the assignment of a [[keymap]], which means that entry access could be granted via keymaps as well.
However, be aware that the primary role of ADAAs is to manage the references to data structures that you are using. As of now, I do not plan to allow many access and manipulation operations on the ADAA directly. Instead, I implement a numpy interface, where you can get an ADAA from numpy data and convert it back to numpy as well.