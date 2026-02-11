# sigma0.py
import numpy as np
import itertools
from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA, STATUS_INPUT
from collections import defaultdict

class ProductState:
    def __init__(self, vectors):
        self.N = len(vectors) // 3
        self.vectors = np.array(vectors).reshape(self.N, 3)

    def expect(self, pauli_string):
        assert len(pauli_string) == self.N
        result = 1.0
        for i, p in enumerate(pauli_string):
            if p == 'I':
                continue
            elif p == 'X':
                result *= self.vectors[i, 0]
            elif p == 'Y':
                result *= self.vectors[i, 1]
            elif p == 'Z':
                result *= self.vectors[i, 2]
            else:
                raise ValueError(f"Invalid Pauli character '{p}' at site {i}")
        return result

def project_pauli_string(pauli_string, sigma0, m):
    N = len(pauli_string)
    result = {}
    positions = list(range(N))

    if sum(p != 'I' for p in pauli_string) <= m:
        return {pauli_string: 1.0}

    for r in range(m + 1):
        for kept_sites in itertools.combinations(positions, r):
            new_str = ['I'] * N
            for i in kept_sites:
                new_str[i] = pauli_string[i]
            dropped_sites = [i for i in positions if i not in kept_sites]
            dropped_str = ['I'] * N
            for i in dropped_sites:
                dropped_str[i] = pauli_string[i]
            coeff = sigma0.expect(''.join(dropped_str))
            key = ''.join(new_str)
            result[key] = result.get(key, 0.0) + coeff

    return result

def project_adaa(adaa, sigma0, m):
    projected_terms = defaultdict(float)
    keymap = type(adaa)._KEYMAP

    for i in range(len(adaa.real)):
        pauli_key = keymap.off2key(i)
        coeff = adaa.real[i]
        if abs(coeff) < 1e-14:<
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
