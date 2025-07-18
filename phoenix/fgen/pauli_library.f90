MODULE pauli_library
  ! IMPORTS
  
  IMPLICIT NONE
  
  ! CONSTANTS
  integer, parameter :: offs_rho_inner_0_a_values(2) = (/0, 0/)
  integer, parameter :: offs_ham_inner_2_b_values(2) = (/3, 0/)
  integer, parameter :: offs_res_inner_1_c_values(2) = (/4, 1/)
  integer, parameter :: offs_rho_inner_1_a_values(2) = (/1, 4/)
  integer, parameter :: offs_ham_inner_2_b_values1(2) = (/0, 3/)
  integer, parameter :: offs_res_inner_0_c_values(2) = (/0, 0/)
  integer, parameter :: offs_rho_inner_1_a_values1(2) = (/1, 4/)
  integer, parameter :: offs_ham_inner_2_b_values2(2) = (/0, 3/)
  integer, parameter :: offs_res_inner_1_c_values1(2) = (/1, 4/)
  integer, parameter :: offs_rho_inner_1_a_values2(1) = (/1/)
  integer, parameter :: offs_ham_inner_2_b_values3(1) = (/3/)
  integer, parameter :: offs_res_inner_2_c_values(1) = (/7/)
  integer, parameter :: offs_rho_inner_1_a_values3(1) = (/4/)
  integer, parameter :: offs_ham_inner_2_b_values4(1) = (/0/)
  integer, parameter :: offs_res_inner_2_c_values1(1) = (/7/)
  integer, parameter :: offs_rho_inner_2_a_values(1) = (/7/)
  integer, parameter :: offs_ham_inner_2_b_values5(1) = (/0/)
  integer, parameter :: offs_res_inner_1_c_values2(1) = (/4/)
  integer, parameter :: offs_rho_inner_2_a_values1(1) = (/7/)
  integer, parameter :: offs_ham_inner_2_b_values6(1) = (/0/)
  integer, parameter :: offs_res_inner_2_c_values2(1) = (/7/)
  integer, parameter :: offs_rho_inner_2_a_values2(1) = (/7/)
  integer, parameter :: offs_ham_inner_2_b_values7(1) = (/3/)
  integer, parameter :: offs_res_inner_1_c_values3(1) = (/1/)
  integer, parameter :: offs_rho_inner_2_a_values3(1) = (/7/)
  integer, parameter :: offs_ham_inner_2_b_values8(1) = (/3/)
  integer, parameter :: offs_res_inner_2_c_values3(1) = (/7/)
  
  CONTAINS
  
  ! ROUTINES
  

  ! Subroutine: multiply_000
  SUBROUTINE multiply_000(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_0_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 1
      offs_rho_inner_0_a_lccL7 = offs_rho_inner_0_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_000

  ! Subroutine: multiply_001
  SUBROUTINE multiply_001(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_0_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 1
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values1(loc_fmfcL8 + 1)
      offs_res_inner_0_c_lccL7 = offs_res_inner_0_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_001

  ! Subroutine: multiply_002
  SUBROUTINE multiply_002(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 1
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values2(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_002

  ! Subroutine: multiply_003
  SUBROUTINE multiply_003(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values3(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_003

  ! Subroutine: multiply_004
  SUBROUTINE multiply_004(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values4(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_004

  ! Subroutine: multiply_005
  SUBROUTINE multiply_005(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values5(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_005

  ! Subroutine: multiply_006
  SUBROUTINE multiply_006(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values6(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_006

  ! Subroutine: multiply_007
  SUBROUTINE multiply_007(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values7(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_007

  ! Subroutine: multiply_008
  SUBROUTINE multiply_008(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 0
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values8(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_008

  ! Subroutine: multiply
  SUBROUTINE multiply(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(16) :: rho_real
    double precision, intent(IN), dimension(16) :: rho_imag
    double precision, intent(IN), dimension(6) :: ham_real
    double precision, intent(IN), dimension(6) :: ham_imag
    double precision, intent(OUT), dimension(16) :: res_real
    double precision, intent(OUT), dimension(16) :: res_imag
    
    
    call multiply_000(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_001(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_002(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_003(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_004(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_005(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_006(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_007(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_008(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
  END SUBROUTINE multiply

END MODULE pauli_library
