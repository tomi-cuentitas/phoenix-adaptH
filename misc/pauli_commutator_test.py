from qop import PauliBasis

bases = [PauliBasis(str(num)) for num in range(10)]

op1 = PauliBasis.from_string("xxxxxxxxxx")
for num_y in range(11):
    for num_z in range(11 - num_y):
        for num_0 in range(11 - num_y - num_z):
            op2 = PauliBasis.from_string(
                "y" * num_y
                + "z" * (num_z)
                + "0" * num_0
                + "x" * (10 - num_y - num_z - num_0)
            )

            prod = op1 * op2 - op2 * op1
            # if (num_y - num_z) % 4 == 3:
            #     assert prod.to_string(coeff=True, bracket=False)[0:3] == "-2j"
            # if (num_y - num_z) % 4 == 1:
            #     assert prod.to_string(coeff=True, bracket=False)[0:2] == "2j"

            phase = ((num_y - num_z) % 2) and ((num_y - num_z) & 3)
            if (num_y - num_z) % 2 == 0:
                assert prod.to_string(coeff=True, bracket=False)[0] == "0"
            else:
                if (num_y - num_z) >> 1 == 1:
                    assert (
                        prod.to_string(coeff=True, bracket=False)[0:3] == "-2j"
                    )
                elif (num_y - num_z) >> 1 == 0:
                    assert (
                        prod.to_string(coeff=True, bracket=False)[0:2] == "2j"
                    )
            # print(
            #     num_0,
            #     num_y,
            #     num_z,
            #     op2.to_string(),
            #     prod.to_string(coeff=True, bracket=True),
            #     (num_y - num_z) % 4,
            #     phase,
            # )
            assert (num_y - num_z) % 4 == phase or (
                (num_y - num_z) % 4 == 2 and phase == 0
            )
