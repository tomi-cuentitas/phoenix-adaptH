# adaptHeisenberg/development_tests/test_proj_adaa_XYZ.py
#
# Run:
#   python adaptHeisenberg/development_tests/test_proj_adaa_XYZ.py

from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_system_adaa


def build_minimal_system_keymap_for_xyz():
    system = KeyMap(name="system")

    # Inner keymaps by body size
    km0 = KeyMap(name="pauli_0")
    km0.entry("")  # scalar label (optional; projection excludes scalar by default)

    km1 = KeyMap(name="pauli_1")
    km1.entry("x"); km1.entry("y"); km1.entry("z")

    km2 = KeyMap(name="pauli_2")
    km2.entry("xy"); km2.entry("xz"); km2.entry("yz")

    km3 = KeyMap(name="pauli_3")
    km3.entry("xyz")

    # Link outer domains (nums tuples) to the right inner keymap
    system.link(tuple(), km0)

    system.link((0,), km1)
    system.link((1,), km1)
    system.link((2,), km1)

    system.link((0, 1), km2)
    system.link((0, 2), km2)
    system.link((1, 2), km2)

    system.link((0, 1, 2), km3)

    return system


def main():
    km = build_minimal_system_keymap_for_xyz()
    ADAAType = FortranRA.set_keymap(km)

    src = ADAAType(size=km.size)
    dst = ADAAType(size=km.size)
    src.to_zero()
    dst.to_zero()
    
    # Load exactly one term: ((0,1,2), 'xyz') = 1.0
    src.real[km.key2off((0, 1, 2), "xyz")] = 1.0

    # sigma0 on N=3 sites: (x,y,z)=(1,2,3) on each site
    sigma0 = ProductState([1.0, 2.0, 3.0] * 3)

    # Project to m=2
    project_system_adaa(src, dst, sigma0, m=2, exclude_scalar=False)

    # Print ONLY the result (nonzeros)
    km_out = type(dst)._KEYMAP
    for i in range(dst.size):
        v = float(dst.real[i])
        if abs(v) > 1e-12:
            nums, word = km_out.off2key(i).labels
            print(f"{nums} '{word}' : {v}")


if __name__ == "__main__":
    main()
