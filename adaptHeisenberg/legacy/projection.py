import numpy as np
import itertools

from collections import defaultdict 
from phoenix.keymap import KeyMap
from phoenix.adaa_derived import (
    FortranCA,
    FortranRA,
    STATUS_INPUT,
    STATUS_INOUT,
)


def project_pauli_string(pauli_string, sigma0, m):
    """
    Project a Pauli string to <=m-body terms using sigma0-weighted expectations.
    Returns a dict of {new_pauli_string: weight}
    
    """
    N = len(pauli_string)
    result = {}
    positions = list(range(N))

    original_weight = sum(p != 'I' for p in pauli_string)
    if original_weight <= m:
        return {pauli_string: 1.0}

    pauli_chars = set(pauli_string) - {'I'}

    for r in range(1, m + 1):
        for kept_sites in itertools.combinations(positions, r):
            new_str = ['I'] * N
            for i in kept_sites:
                new_str[i] = pauli_string[i]
            dropped_sites = [i for i in positions if i not in kept_sites]
            dropped_str = ['I'] * N
            for i in dropped_sites:
                dropped_str[i] = pauli_string[i]

            proj_str = ''.join(new_str)
            if set(proj_str) - {'I'} <= pauli_chars:
                dropped_val = sigma0.expect(''.join(dropped_str))
                if abs(dropped_val) > 1e-14:
                    result[proj_str] = result.get(proj_str, 0.0) + dropped_val

    return result

def project_adaa(adaa, sigma0, m):
    projected_terms = defaultdict(float)
    keymap = type(adaa)._KEYMAP

    for i in range(len(adaa.real)):
        pauli_key = keymap.off2key(i).onlylabel()
        coeff = adaa.real[i]
        if abs(coeff) < 1e-14:
            continue
        body = sum(p != 'I' for p in pauli_key)
        if body <= m:
            projected_terms[pauli_key] += coeff
        else:
            decomposed = project_pauli_string(pauli_key, sigma0, m)
            for k, v in decomposed.items():
                projected_terms[k] += coeff * v

    # Build output keymap
    new_keymap = KeyMap(name="projected")
    for k in projected_terms:
        new_keymap.entry(k)

    # Register and allocate ADAA
    ADAAType = FortranRA.set_keymap(new_keymap)
    new_adaa = ADAAType(size=new_keymap.size)

    for k, v in projected_terms.items():
        offset = new_keymap.key2off(k)
        new_adaa.real[offset] = v

    return new_adaa


