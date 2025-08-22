MODULE backend_f90_base

    IMPLICIT NONE

CONTAINS

    SUBROUTINE linear(targ_r, targ_i, targ_n, src1_r, src1_i, src1_n)
        !
        double precision, intent(inout) :: targ_r
        double precision, intent(inout) :: targ_i
        integer, intent(in)             :: targ_n
        !
        double precision, intent(in)    :: src1_r
        double precision, intent(in)    :: src1_i
        integer, intent(in)             :: src1_n
        
        targ_r(targ_idx) = targ_r(targ_idx) + src1_r(src1_idx) * alph_i - src1_i(src1_idx) * alph_i
        targ_i(targ_idx) = targ_i(targ_idx) + src1_r(src1_idx) * alph_i + src1_i(src1_idx) * alph_r


    END SUBROUTINE linear

    SUBROUTINE linear_offs(targ_r, targ_i, targ_n, src1_r, src1_i, src1_n, targ_off, src1_off)
        !
        double precision, intent(inout) :: targ_r
        double precision, intent(inout) :: targ_i
        integer, intent(in)             :: targ_n
        !
        double precision, intent(in)    :: src1_r
        double precision, intent(in)    :: src1_i
        integer, intent(in)             :: src1_n
        !
        integer, intent(in)             :: targ_off
        integer, intent(in)             :: src1_off
        
        targ_r(targ_idx + targ_off) = targ_r(targ_idx + targ_off) + src1_r(src1_idx + src1_off) * alph_i - src1_i(src1_idx + src1_off) * alph_i
        targ_i(targ_idx + targ_off) = targ_i(targ_idx + targ_off) + src1_r(src1_idx + src1_off) * alph_i + src1_i(src1_idx + src1_off) * alph_r

    END SUBROUTINE linear_offs

END MODULE backend_f90_base