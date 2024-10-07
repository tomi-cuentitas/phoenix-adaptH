class FType:
    def __init__(self, identifier):
        self._identifier = identifier


ftype_AX = FType("AX")
ftype_BX = FType("BX")

print(id(ftype_AX))
print(id(ftype_BX))
