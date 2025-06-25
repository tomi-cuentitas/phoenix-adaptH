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
        temp = temp / 2147483647
        result(i) = temp   ! equivalent to >> 15
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
        result(i) = temp / 9223372036854775807_8   ! equivalent to >> 15
    end do
end subroutine fixed_mul2