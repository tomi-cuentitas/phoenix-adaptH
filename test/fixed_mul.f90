subroutine fixed_mul(a, b, result, n)
    implicit none
    integer*4, intent(in) :: a(n), b(n)
    integer*4, intent(inout) :: result(n)
    integer, intent(in) :: n
    integer*8 :: temp
    integer :: i

    do i = 1, n
        ! Multiply in 32-bit, then shift right by 15 bits
        temp = a(i)
        temp = temp * b(i)
        result(i) = RSHIFT(temp, 31) ! / 2147483647  ! equivalent to >> 31
    end do
end subroutine fixed_mul


subroutine fixed_mul2(a, b, result, n)
    implicit none
    integer*8, intent(in) :: a(n), b(n)
    integer*8, intent(inout) :: result(n)
    integer, intent(in) :: n
    integer*16 :: temp
    integer :: i

    do i = 1, n
        ! Multiply in 32-bit, then shift right by 15 bits
        temp = a(i)
        temp = temp * b(i)
        result(i) = RSHIFT(temp, 63) ! / 9223372036854775807_8   ! equivalent to >> 63
    end do
end subroutine fixed_mul2


subroutine float_mul2(a, b, result, n)
    implicit none
    double precision, intent(in) :: a(n), b(n)
    double precision, intent(inout) :: result(n)
    integer, intent(in) :: n
    integer :: i

    do i = 1, n
        result(i) = a(i) * b(i)
    end do
end subroutine float_mul2



subroutine fixed_mul2s(a, b, result, n)
    implicit none
    integer*8, intent(in) :: a(n), b(n)
    integer*8, intent(inout) :: result(n)
    integer, intent(in) :: n
    integer*4 :: a_h, a_l, b_h, b_l
    integer :: i

    do i = 1, n
        ! Multiply in 32-bit, then shift right by 15 bits
        a_h = RSHIFT(a(i), 32)
        a_l = a(i) !, 8589934591
        b_h = RSHIFT(b(i), 32)
        b_l = b(i) !, 8589934591
        result(i) = a_h * b_h + RSHIFT(a_h * b_l + b_h * a_l, 16)
    end do
end subroutine fixed_mul2s
