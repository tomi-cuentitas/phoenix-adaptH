MODULE backend_f90_base

    IMPLICIT NONE
    INTEGER :: xxx = 666

CONTAINS

    SUBROUTINE foo(value)
        integer, intent(out) :: value
        value = 42
    END SUBROUTINE foo

END MODULE backend_f90_base