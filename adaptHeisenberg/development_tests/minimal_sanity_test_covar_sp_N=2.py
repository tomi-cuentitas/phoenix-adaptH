

from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.covariance_scalar_product import fetch_covar_scalar_product

def build_minimal_system_keymap_for_N2():
    
    system = KeyMap(name="two_spin_system")
    
    km0 = KeyMap(name="pauli_0")
    km0.entry("")
    
    km1 = KeyMap(name="pauli_one_body")
    km1.entry("x"); km1.entry("y"); km1.entry("z")
    
    km2 = KeyMap(name="pauli_two_body")
    km2.entry("xx"); km2.entry("xy"); km2.entry("xz")
    km2.entry("yx"); km2.entry("yy"); km2.entry("yz")
    km2.entry("zx"); km2.entry("zy"); km2.entry("zz")
    
    
    system.link(tuple(), km0)
    system.link((0,), km1) 
    system.link((1,), km1)
    system.link((0,1), km2)

    return system

def easy_print_adaa_from_system_keymap(
    tgt
):
    km_out = type(tgt)._KEYMAP
    out = [
        (*km_out.off2key(i).labels, float(tgt.real[i]))
        for i in range(tgt.size)
        if abs(tgt.real[i]) > 1e-12
    ]

    print(out)

def main():
    km = build_minimal_system_keymap_for_N2()
    ADAAType = FortranRA.set_keymap(km)
    
    src_einz = ADAAType(size=km.size)
    src_zwei = ADAAType(size=km.size)
    src_einz.to_zero()
    src_zwei.to_zero()
    
    ### we load up various Paulis for N=2 spins to test all possible results 
    ### for the covariance product w.r.t. a Z-aligned sigma0
    
    sigma0 = ProductState([.0, .0, 1., .0, .0, 1.0])

    sp_local = fetch_covar_scalar_product(sigma0)

    src_einz.real[km.key2off((0,1), "xx")] = .5
    src_zwei.real[km.key2off((0,1), "yy")] = .25
    
    print("(XX,YY)_covar(|Z1Z2><Z1Z2|)=-1. * .125? Res=",sp_local(src_einz, src_zwei))
    
    src_einz.to_zero()
    src_zwei.to_zero()
    
    src_einz.real[km.key2off((0,), "x")] = .5
    src_zwei.real[km.key2off((0,1), "yy")] = .25
    
    # easy_print_adaa_from_system_keymap(src_einz)
    
    
    print("(X1,YY)_covar(|Z1Z2><Z1Z2|)=0.? Res=",sp_local(src_einz, src_zwei))



if __name__ == "__main__":
    main()