MODULE pauli_library
  ! IMPORTS
  
  ! CONSTANTS
  integer, parameter :: offs_rho_inner_0_a_values(5) = (/0, 0, 0, 0, 0/)
  integer, parameter :: offs_ham_inner_2_b_values(5) = (/9, 6, 0, 12, 3/)
  integer, parameter :: offs_res_inner_1_c_values(5) = (/10, 7, 1, 13, 4/)
  integer, parameter :: offs_rho_inner_0_a_values1(10) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 0/)
  integer, parameter :: offs_ham_inner_2_b_values1(10) = (/42, 39, 24, 18, 30, 21, 27, 36, 33, 15/)
  integer, parameter :: offs_res_inner_2_c_values(10) = (/97, 88, 43, 25, 61, 34, 52, 79, 70, 16/)
  integer, parameter :: offs_rho_inner_1_a_values(5) = (/13, 1, 10, 4, 7/)
  integer, parameter :: offs_ham_inner_2_b_values2(5) = (/12, 0, 9, 3, 6/)
  integer, parameter :: offs_res_inner_0_c_values(5) = (/0, 0, 0, 0, 0/)
  integer, parameter :: offs_rho_inner_1_a_values1(5) = (/13, 4, 7, 10, 1/)
  integer, parameter :: offs_ham_inner_2_b_values3(5) = (/12, 3, 6, 9, 0/)
  integer, parameter :: offs_res_inner_1_c_values1(5) = (/13, 4, 7, 10, 1/)
  integer, parameter :: offs_rho_inner_1_a_values2(10) = (/10, 1, 7, 4, 4, 1, 7, 1, 4, 1/)
  integer, parameter :: offs_ham_inner_2_b_values4(10) = (/12, 12, 9, 12, 6, 6, 12, 9, 9, 3/)
  integer, parameter :: offs_res_inner_2_c_values1(10) = (/97, 43, 79, 70, 52, 25, 88, 34, 61, 16/)
  integer, parameter :: offs_rho_inner_1_a_values3(10) = (/4, 7, 1, 1, 10, 4, 7, 1, 4, 1/)
  integer, parameter :: offs_ham_inner_2_b_values5(10) = (/33, 39, 18, 21, 42, 30, 36, 24, 27, 15/)
  integer, parameter :: offs_res_inner_1_c_values2(10) = (/13, 13, 7, 10, 13, 10, 10, 13, 7, 4/)
  integer, parameter :: offs_rho_inner_1_a_values4(10) = (/1, 4, 7, 4, 1, 7, 1, 4, 1, 10/)
  integer, parameter :: offs_ham_inner_2_b_values6(10) = (/18, 33, 36, 27, 15, 39, 21, 30, 24, 42/)
  integer, parameter :: offs_res_inner_2_c_values2(10) = (/25, 70, 79, 52, 16, 88, 34, 61, 43, 97/)
  integer, parameter :: offs_rho_inner_1_a_values5(10) = (/13, 13, 13, 10, 13, 4, 7, 10, 7, 10/)
  integer, parameter :: offs_ham_inner_2_b_values7(10) = (/3, 6, 9, 3, 0, 0, 3, 6, 0, 0/)
  integer, parameter :: offs_res_inner_2_c_values3(10) = (/70, 88, 97, 61, 43, 16, 52, 79, 25, 34/)
  integer, parameter :: offs_rho_inner_1_a_values6(10) = (/13, 13, 10, 13, 13, 10, 10, 4, 7, 7/)
  integer, parameter :: offs_ham_inner_2_b_values8(10) = (/33, 42, 21, 39, 24, 30, 36, 15, 18, 27/)
  integer, parameter :: offs_res_inner_1_c_values3(10) = (/4, 10, 1, 7, 1, 4, 7, 1, 1, 4/)
  integer, parameter :: offs_rho_inner_1_a_values7(10) = (/7, 13, 7, 4, 10, 13, 13, 10, 13, 10/)
  integer, parameter :: offs_ham_inner_2_b_values9(10) = (/18, 42, 27, 15, 30, 33, 24, 36, 39, 21/)
  integer, parameter :: offs_res_inner_2_c_values4(10) = (/25, 97, 52, 16, 61, 70, 43, 79, 88, 34/)
  integer, parameter :: offs_rho_inner_2_a_values(10) = (/34, 88, 25, 97, 70, 16, 52, 61, 79, 43/)
  integer, parameter :: offs_ham_inner_2_b_values10(10) = (/0, 6, 0, 9, 3, 0, 3, 3, 6, 0/)
  integer, parameter :: offs_res_inner_1_c_values4(10) = (/10, 13, 7, 13, 13, 4, 7, 10, 10, 13/)
  integer, parameter :: offs_rho_inner_2_a_values1(10) = (/43, 25, 16, 79, 52, 70, 88, 61, 97, 34/)
  integer, parameter :: offs_ham_inner_2_b_values11(10) = (/0, 0, 0, 6, 3, 3, 6, 3, 9, 0/)
  integer, parameter :: offs_res_inner_2_c_values5(10) = (/43, 25, 16, 79, 52, 70, 88, 61, 97, 34/)
  integer, parameter :: offs_rho_inner_2_a_values2(10) = (/79, 52, 16, 43, 61, 25, 70, 88, 34, 97/)
  integer, parameter :: offs_ham_inner_2_b_values12(10) = (/9, 6, 3, 12, 9, 6, 12, 12, 9, 12/)
  integer, parameter :: offs_res_inner_1_c_values5(10) = (/7, 4, 1, 1, 4, 1, 4, 7, 1, 10/)
  integer, parameter :: offs_rho_inner_2_a_values3(10) = (/88, 79, 34, 52, 43, 25, 61, 16, 97, 70/)
  integer, parameter :: offs_ham_inner_2_b_values13(10) = (/12, 9, 9, 6, 12, 6, 9, 3, 12, 12/)
  integer, parameter :: offs_res_inner_2_c_values6(10) = (/88, 79, 34, 52, 43, 25, 61, 16, 97, 70/)
  integer, parameter :: offs_rho_inner_2_a_values4(10) = (/52, 16, 43, 61, 97, 25, 70, 88, 79, 34/)
  integer, parameter :: offs_ham_inner_2_b_values14(10) = (/27, 15, 24, 30, 42, 18, 33, 39, 36, 21/)
  integer, parameter :: offs_res_inner_0_c_values1(10) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 0/)
  integer, parameter :: offs_rho_inner_2_a_values5(10) = (/52, 79, 25, 43, 16, 34, 70, 61, 97, 88/)
  integer, parameter :: offs_ham_inner_2_b_values15(10) = (/27, 36, 18, 24, 15, 21, 33, 30, 42, 39/)
  integer, parameter :: offs_res_inner_2_c_values7(10) = (/52, 79, 25, 43, 16, 34, 70, 61, 97, 88/)
  integer, parameter :: offs_rho_inner_2_a_values6(10) = (/43, 97, 52, 25, 88, 70, 61, 79, 16, 34/)
  integer, parameter :: offs_ham_inner_2_b_values16(10) = (/24, 42, 27, 18, 39, 33, 30, 36, 15, 21/)
  integer, parameter :: offs_res_inner_1_c_values6(10) = (/13, 13, 7, 7, 13, 13, 10, 10, 4, 10/)
  integer, parameter :: offs_rho_inner_2_a_values7(10) = (/34, 25, 43, 88, 97, 61, 16, 52, 70, 79/)
  integer, parameter :: offs_ham_inner_2_b_values17(10) = (/21, 18, 24, 39, 42, 30, 15, 27, 33, 36/)
  integer, parameter :: offs_res_inner_1_c_values7(10) = (/1, 1, 1, 7, 10, 4, 1, 4, 4, 7/)
  integer, parameter :: offs_rho_inner_2_a_values8(10) = (/34, 52, 79, 52, 25, 25, 61, 16, 16, 16/)
  integer, parameter :: offs_ham_inner_2_b_values18(10) = (/24, 33, 39, 30, 24, 21, 33, 24, 18, 21/)
  integer, parameter :: offs_res_inner_2_c_values8(10) = (/97, 88, 97, 79, 88, 79, 97, 70, 52, 61/)
  integer, parameter :: offs_rho_inner_2_a_values9(10) = (/61, 16, 25, 52, 16, 34, 52, 79, 25, 16/)
  integer, parameter :: offs_ham_inner_2_b_values19(10) = (/42, 27, 36, 36, 33, 42, 39, 42, 39, 30/)
  integer, parameter :: offs_res_inner_2_c_values9(10) = (/70, 25, 34, 61, 43, 43, 70, 88, 43, 34/)
  integer, parameter :: offs_rho_inner_2_a_values10(10) = (/34, 88, 34, 43, 43, 70, 70, 61, 43, 25/)
  integer, parameter :: offs_ham_inner_2_b_values20(10) = (/15, 36, 18, 18, 21, 30, 27, 27, 15, 15/)
  integer, parameter :: offs_res_inner_2_c_values10(10) = (/61, 97, 79, 88, 97, 97, 88, 79, 70, 52/)
  integer, parameter :: offs_rho_inner_2_a_values11(10) = (/43, 43, 43, 70, 34, 61, 25, 88, 70, 34/)
  integer, parameter :: offs_ham_inner_2_b_values21(10) = (/33, 42, 39, 39, 30, 36, 27, 42, 42, 36/)
  integer, parameter :: offs_res_inner_2_c_values11(10) = (/16, 34, 25, 52, 16, 52, 16, 79, 61, 25/)
  integer, parameter :: offs_rho_inner_2_a_values12(10) = (/88, 70, 61, 88, 79, 79, 97, 97, 52, 97/)
  integer, parameter :: offs_ham_inner_2_b_values22(10) = (/27, 15, 15, 18, 18, 27, 30, 21, 15, 36/)
  integer, parameter :: offs_res_inner_2_c_values12(10) = (/70, 43, 34, 43, 34, 61, 70, 43, 25, 88/)
  integer, parameter :: offs_rho_inner_2_a_values13(10) = (/61, 79, 79, 97, 52, 88, 97, 88, 97, 70/)
  integer, parameter :: offs_ham_inner_2_b_values23(10) = (/21, 30, 21, 33, 18, 24, 39, 33, 24, 24/)
  integer, parameter :: offs_res_inner_2_c_values13(10) = (/16, 52, 25, 61, 16, 25, 79, 52, 34, 16/)
  
  ! ROUTINES
  

  ! Subroutine: multiply_000
  SUBROUTINE multiply_000(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_0_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
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
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_0_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_0_a_lccL7 = offs_rho_inner_0_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values1(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_001

  ! Subroutine: multiply_002
  SUBROUTINE multiply_002(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_0_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values2(loc_fmfcL8 + 1)
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
  END SUBROUTINE multiply_002

  ! Subroutine: multiply_003
  SUBROUTINE multiply_003(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values3(loc_fmfcL8 + 1)
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
  END SUBROUTINE multiply_003

  ! Subroutine: multiply_004
  SUBROUTINE multiply_004(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values4(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values1(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_004

  ! Subroutine: multiply_005
  SUBROUTINE multiply_005(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values5(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_005

  ! Subroutine: multiply_006
  SUBROUTINE multiply_006(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values6(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_006

  ! Subroutine: multiply_007
  SUBROUTINE multiply_007(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values7(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values3(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_007

  ! Subroutine: multiply_008
  SUBROUTINE multiply_008(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values8(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_008

  ! Subroutine: multiply_009
  SUBROUTINE multiply_009(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values9(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values4(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_009

  ! Subroutine: multiply_010
  SUBROUTINE multiply_010(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values10(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values4(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_010

  ! Subroutine: multiply_011
  SUBROUTINE multiply_011(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values11(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values5(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_011

  ! Subroutine: multiply_012
  SUBROUTINE multiply_012(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values12(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values5(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_012

  ! Subroutine: multiply_013
  SUBROUTINE multiply_013(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values13(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values6(loc_fmfcL8 + 1)
      
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
  END SUBROUTINE multiply_013

  ! Subroutine: multiply_014
  SUBROUTINE multiply_014(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_0_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values14(loc_fmfcL8 + 1)
      offs_res_inner_0_c_lccL7 = offs_res_inner_0_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_014

  ! Subroutine: multiply_015
  SUBROUTINE multiply_015(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values15(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values7(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_015

  ! Subroutine: multiply_016
  SUBROUTINE multiply_016(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values16(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values6(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_016

  ! Subroutine: multiply_017
  SUBROUTINE multiply_017(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values17(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values7(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_017

  ! Subroutine: multiply_018
  SUBROUTINE multiply_018(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values8(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values18(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values8(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_018

  ! Subroutine: multiply_019
  SUBROUTINE multiply_019(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values9(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values19(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values9(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_019

  ! Subroutine: multiply_020
  SUBROUTINE multiply_020(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values10(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values20(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values10(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_020

  ! Subroutine: multiply_021
  SUBROUTINE multiply_021(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values11(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values21(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values11(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_021

  ! Subroutine: multiply_022
  SUBROUTINE multiply_022(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values12(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values22(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values12(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_022

  ! Subroutine: multiply_023
  SUBROUTINE multiply_023(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values13(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values23(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values13(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_2_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_023

  ! Subroutine: multiply
  SUBROUTINE multiply(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(106) :: rho_real
    double precision, intent(IN), dimension(106) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(106) :: res_real
    double precision, intent(OUT), dimension(106) :: res_imag
    
    
    call multiply_000(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_001(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_002(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_003(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_004(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_005(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_006(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_007(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_008(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_009(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_010(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_011(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_012(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_013(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_014(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_015(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_016(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_017(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_018(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_019(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_020(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_021(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_022(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_023(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
  END SUBROUTINE multiply

END MODULE pauli_library
