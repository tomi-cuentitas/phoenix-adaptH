MODULE aux

contains

subroutine test_loop(num)

    integer, intent(in) :: num
    integer :: k

    do k=1,num

    end do

end subroutine test_loop

subroutine test_iadd(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) + inp2(k)
    end do

end subroutine test_iadd


subroutine test_fadd(outp, inp1, inp2, num)

    integer, intent(in) :: num
    real, dimension(num), intent(in) :: inp1, inp2
    real, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) + inp2(k)
    end do

end subroutine test_fadd


subroutine test_dadd(outp, inp1, inp2, num)

    integer, intent(in) :: num
    double precision, dimension(num), intent(in) :: inp1, inp2
    double precision, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) + inp2(k)
    end do

end subroutine test_dadd



subroutine test_isub(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) - inp2(k)
    end do

end subroutine test_isub


subroutine test_fsub(outp, inp1, inp2, num)

    integer, intent(in) :: num
    real, dimension(num), intent(in) :: inp1, inp2
    real, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) - inp2(k)
    end do

end subroutine test_fsub


subroutine test_dsub(outp, inp1, inp2, num)

    integer, intent(in) :: num
    double precision, dimension(num), intent(in) :: inp1, inp2
    double precision, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) - inp2(k)
    end do

end subroutine test_dsub


subroutine test_imul(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) * inp2(k)
    end do

end subroutine test_imul


subroutine test_fmul(outp, inp1, inp2, num)

    integer, intent(in) :: num
    real, dimension(num), intent(in) :: inp1, inp2
    real, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) * inp2(k)
    end do

end subroutine test_fmul


subroutine test_dmul(outp, inp1, inp2, num)

    integer, intent(in) :: num
    double precision, dimension(num), intent(in) :: inp1, inp2
    double precision, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) * inp2(k)
    end do

end subroutine test_dmul



subroutine test_idiv(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) / inp2(k)
    end do

end subroutine test_idiv


subroutine test_fdiv(outp, inp1, inp2, num)

    integer, intent(in) :: num
    real, dimension(num), intent(in) :: inp1, inp2
    real, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) / inp2(k)
    end do

end subroutine test_fdiv


subroutine test_ddiv(outp, inp1, inp2, num)

    integer, intent(in) :: num
    double precision, dimension(num), intent(in) :: inp1, inp2
    double precision, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = inp1(k) / inp2(k)
    end do

end subroutine test_ddiv




subroutine test_iand(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = IAND(inp1(k), inp2(k))
    end do

end subroutine test_iand


subroutine test_iior(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = IOR(inp1(k), inp2(k))
    end do

end subroutine test_iior


subroutine test_ixor(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = IEOR(inp1(k), inp2(k))
    end do

end subroutine test_ixor



subroutine test_inot(outp, inp1, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = NOT(inp1(k))
    end do

end subroutine test_inot


subroutine test_ilsh(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = LSHIFT(inp1(k), inp2(k))
    end do

end subroutine test_ilsh


subroutine test_irsh(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = RSHIFT(inp1(k), inp2(k))
    end do

end subroutine test_irsh


subroutine test_igsh(outp, inp1, inp2, num)

    integer, intent(in) :: num
    integer, dimension(num), intent(in) :: inp1, inp2
    integer, dimension(num), intent(out) :: outp
    integer :: k

    do k=1,num
        outp(k) = ISHFT(inp1(k), inp2(k))
    end do

end subroutine test_igsh


END MODULE aux