from phoenix.keymap import KeyMap
from phoenix.adaa_derived import FortranRA, STATUS_INPUT
from phoenix.fgen.instructionvar import InstructionVariable
from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_adaa

# Step 1: Build KeyMap
proj_dict = {"XIZ": 0.4, "IXZ": -0.1, "IIZ": 0.3}

proj_dict = {"XXZ": 1.}

km = KeyMap(name="manual_obs")
for key in proj_dict:
    km.entry(key)

# Step 2: Register via InstructionVariable (to avoid _FIXED_SIZE error)
var = InstructionVariable.new("obs", config=km)

# Step 3: Bind ADAA backend
ADAAType = FortranRA.set_keymap(km)
obs = ADAAType(size=km.size)  # ✅ This is the correct instantiation method
obs.real[km.key2off('XXZ')] = 1.

#obs.real[km.key2off("XIZ")] = 0.4
#obs.real[km.key2off("IXZ")] = -0.1
#obs.real[km.key2off("IIZ")] = 0.3

# Step 4: print()

#print("FITA", obs.real[km.key2off("XIZ")])

# Step 5: Run projection
sigma = ProductState([0., 0, 1., 0, 0, 1.0, 0, 0, 1])
proj = project_adaa(obs, sigma, m=3)

# Step 6: View results
print("Projected ADAA (m=3):")

keymap = type(proj)._KEYMAP
for i in range(len(proj.real)):
    key = keymap.off2key(i).onlylabel()
    val = proj.real[i]
    print(f"{key}: {val:.6f}")


proj = project_adaa(obs, sigma, m=2)

# Step 6: View results
print("Projected ADAA (m=2):")

keymap = type(proj)._KEYMAP
for i in range(len(proj.real)):
    key = keymap.off2key(i).onlylabel()
    val = proj.real[i]
    print(f"{key}: {val:.6f}")

    
    
proj = project_adaa(obs, sigma, m=1)

# Step 6: View results
print("Projected ADAA (m=1):")

keymap = type(proj)._KEYMAP
for i in range(len(proj.real)):
    key = keymap.off2key(i).onlylabel()
    val = proj.real[i]
    print(f"{key}: {val:.6f}")
