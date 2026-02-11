import adaptHeisenberg.projection as proj
import adaptHeisenberg.sigma0 as state

if __name__ == '__main__':
    sigma = state.ProductState([0,0,1., 0,0,1., 0,0,1.]) # |X>, |Y>, |Z>
    p = 'XXZ'
        
    print("Example: m=3")
    out = proj.project_pauli_string(p, sigma, m=3)
    for k, v in out.items():
        print(f"{k}: {v:.3f}")
        
    print("Example: m=2")
    out = proj.project_pauli_string(p, sigma, m=2)
    for k, v in out.items():
        print(f"{k}: {v:.3f}")
    
          
    print("Example: m=1")
    out = proj.project_pauli_string(p, sigma, m=1)
    for k, v in out.items():
        print(f"{k}: {v:.3f}")