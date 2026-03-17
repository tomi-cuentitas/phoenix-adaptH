### sigma0.py contains the definition for the ProductState class

import numpy as np

class ProductState:
    def __init__(self, vectors):
        """
        bloch_vectors: flat list or array of 3N elements [x1, y1, z1, ..., xN, yN, zN]
        """
        self.N = len(vectors) // 3
        self.vectors = np.array(vectors).reshape(self.N, 3) # Shape (N, 3)
        
    def expect(self, pauli_string: str) -> float:
        """
        Compute expectation Tr(sigma0 * P), where P is a string like 'XIZYX'
        """

        # Check if the length of the Pauli string matches the number of qubits
        if len(pauli_string) < self.N:
            # Pad the Pauli string with 'I's to the right if it's shorter than the number of qubits
            pauli_string = pauli_string + 'I' * (self.N - len(pauli_string))

        assert len(pauli_string) == self.N, f"Pauli string length {len(pauli_string)} must match the number of qubits {self.N}"

        result = 1.0
        for i, p in enumerate(pauli_string):
            if p == 'I':
                continue
            elif p == 'X':
                result *= self.vectors[i, 0]  # Pauli X acts on the x-component
            elif p == 'Y':
                result *= self.vectors[i, 1]  # Pauli Y acts on the y-component
            elif p == 'Z':
                result *= self.vectors[i, 2]  # Pauli Z acts on the z-component
            else:
                raise ValueError(f"Invalid Pauli character '{p}' at site {i}")

        return result
             
        
