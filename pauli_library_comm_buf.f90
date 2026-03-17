MODULE pauli_library_comm_buf
  ! IMPORTS
  
  IMPLICIT NONE
  
  ! CONSTANTS
  integer, parameter :: offs_rho_inner_1_a_values(8) = (/13, 4, 7, 10, 1, 22, 19, 16/)
  integer, parameter :: offs_ham_inner_1_b_values(8) = (/12, 3, 6, 9, 0, 21, 18, 15/)
  integer, parameter :: offs_res_inner_1_c_values(8) = (/13, 4, 7, 10, 1, 22, 19, 16/)
  integer, parameter :: offs_rho_inner_1_a_values1(7) = (/7, 16, 19, 4, 1, 13, 10/)
  integer, parameter :: offs_ham_inner_2_b_values(7) = (/30, 39, 42, 27, 24, 36, 33/)
  integer, parameter :: offs_res_inner_2_c_values(7) = (/142, 250, 268, 88, 25, 223, 187/)
  integer, parameter :: offs_rho_inner_1_a_values2(7) = (/19, 13, 22, 7, 4, 10, 16/)
  integer, parameter :: offs_ham_inner_2_b_values1(7) = (/39, 33, 42, 27, 24, 30, 36/)
  integer, parameter :: offs_res_inner_2_c_values1(7) = (/250, 187, 268, 88, 25, 142, 223/)
  integer, parameter :: offs_rho_inner_2_a_values(28) = (/79, 232, 88, 178, 214, 97, 187, 115, 169,  &
    241, 34, 142, 196, 160, 124, 43, 52, 268, 223, 25, 70, 259, 205, 106, 61, 151, 250, 133/)
  integer, parameter :: offs_ham_inner_1_b_values1(28) = (/0, 12, 3, 6, 9, 3, 9, 3, 6, 12, 0, 6, 9,  &
    6, 3, 0, 0, 18, 12, 0, 0, 15, 9, 3, 0, 6, 15, 3/)
  integer, parameter :: offs_res_inner_2_c_values2(28) = (/79, 232, 88, 178, 214, 97, 187, 115,      &
    169, 241, 34, 142, 196, 160, 124, 43, 52, 268, 223, 25, 70, 259, 205, 106, 61, 151, 250, 133/)
  integer, parameter :: offs_rho_inner_2_a_values1(28) = (/214, 268, 79, 250, 178, 25, 61, 205,      &
    223, 142, 70, 259, 52, 34, 133, 151, 124, 160, 88, 97, 241, 187, 169, 232, 196, 43, 115, 106/)
  integer, parameter :: offs_ham_inner_1_b_values2(28) = (/21, 21, 21, 18, 21, 3, 15, 18, 15, 9,     &
    18, 21, 12, 6, 21, 12, 18, 15, 6, 9, 21, 12, 18, 18, 15, 9, 15, 12/)
  integer, parameter :: offs_res_inner_2_c_values3(28) = (/214, 268, 79, 250, 178, 25, 61, 205,      &
    223, 142, 70, 259, 52, 34, 133, 151, 124, 160, 88, 97, 241, 187, 169, 232, 196, 43, 115, 106/)
  integer, parameter :: offs_rho_inner_2_a_values2(7) = (/187, 88, 268, 223, 142, 25, 250/)
  integer, parameter :: offs_ham_inner_2_b_values2(7) = (/33, 27, 42, 36, 30, 24, 39/)
  integer, parameter :: offs_res_inner_1_c_values1(7) = (/13, 7, 22, 16, 10, 4, 19/)
  integer, parameter :: offs_rho_inner_2_a_values3(7) = (/250, 187, 223, 268, 25, 88, 142/)
  integer, parameter :: offs_ham_inner_2_b_values3(7) = (/39, 33, 36, 42, 24, 27, 30/)
  integer, parameter :: offs_res_inner_1_c_values2(7) = (/16, 10, 13, 19, 1, 4, 7/)
  integer, parameter :: offs_rho_inner_2_a_values4(21) = (/187, 124, 97, 196, 160, 142, 52, 223,     &
    250, 106, 232, 205, 61, 88, 115, 34, 25, 169, 43, 151, 70/)
  integer, parameter :: offs_ham_inner_2_b_values4(21) = (/36, 42, 33, 39, 39, 33, 36, 39, 42, 36,   &
    42, 42, 39, 30, 39, 30, 27, 42, 33, 36, 42/)
  integer, parameter :: offs_res_inner_3_c_values(21) = (/1519, 1222, 979, 1600, 1438, 1249, 682,    &
    1681, 1762, 1087, 1735, 1654, 763, 844, 1168, 439, 277, 1492, 574, 1357, 817/)
  integer, parameter :: offs_rho_inner_2_a_values5(21) = (/178, 52, 124, 160, 79, 169, 232, 196,     &
    61, 106, 34, 133, 205, 151, 43, 97, 241, 214, 70, 259, 115/)
  integer, parameter :: offs_ham_inner_2_b_values5(21) = (/30, 24, 27, 30, 24, 30, 36, 33, 24, 27,   &
    24, 27, 33, 30, 24, 27, 36, 33, 24, 39, 27/)
  integer, parameter :: offs_res_inner_3_c_values1(21) = (/1330, 331, 925, 1276, 412, 1303, 1681,    &
    1519, 358, 871, 277, 952, 1546, 1249, 304, 844, 1708, 1573, 385, 1762, 898/)
  integer, parameter :: offs_rho_inner_2_a_values6(21) = (/124, 259, 133, 34, 160, 97, 79, 196,      &
    178, 115, 232, 214, 205, 61, 52, 169, 241, 106, 70, 43, 151/)
  integer, parameter :: offs_ham_inner_2_b_values6(21) = (/39, 42, 42, 27, 36, 30, 42, 36, 42, 36,   &
    39, 42, 39, 36, 33, 39, 42, 33, 39, 30, 33/)
  integer, parameter :: offs_res_inner_3_c_values2(21) = (/1168, 1762, 1222, 277, 1357, 844, 817,    &
    1519, 1492, 1087, 1681, 1654, 1600, 682, 574, 1438, 1735, 979, 763, 439, 1249/)
  integer, parameter :: offs_rho_inner_2_a_values7(21) = (/268, 214, 187, 115, 88, 205, 223, 232,    &
    151, 259, 169, 196, 178, 124, 250, 241, 133, 142, 160, 97, 106/)
  integer, parameter :: offs_ham_inner_2_b_values7(21) = (/39, 30, 30, 24, 24, 30, 33, 33, 27, 36,   &
    27, 30, 27, 24, 36, 33, 24, 27, 27, 24, 24/)
  integer, parameter :: offs_res_inner_3_c_values3(21) = (/1762, 1330, 1249, 358, 277, 1303, 1519,   &
    1546, 871, 1708, 925, 1276, 952, 385, 1681, 1573, 412, 844, 898, 304, 331/)
  
  CONTAINS
  
  ! ROUTINES
  

  ! Subroutine: commutate_000_part000
  SUBROUTINE commutate_000_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_1_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 7
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_1_b_lccL7 = offs_ham_inner_1_b_values(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_000_part000

  ! Subroutine: commutate_000
  SUBROUTINE commutate_000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_000_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_000

  ! Subroutine: commutate_001_part000
  SUBROUTINE commutate_001_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 6
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_001_part000

  ! Subroutine: commutate_001
  SUBROUTINE commutate_001(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_001_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_001

  ! Subroutine: commutate_002_part000
  SUBROUTINE commutate_002_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 6
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values1(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 2.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_002_part000

  ! Subroutine: commutate_002
  SUBROUTINE commutate_002(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_002_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_002

  ! Subroutine: commutate_003_part000
  SUBROUTINE commutate_003_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_1_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 27
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_1_b_lccL7 = offs_ham_inner_1_b_values1(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_003_part000

  ! Subroutine: commutate_003
  SUBROUTINE commutate_003(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_003_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_003

  ! Subroutine: commutate_004_part000
  SUBROUTINE commutate_004_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_1_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 27
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_1_b_lccL7 = offs_ham_inner_1_b_values2(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_1_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_1_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_1_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_004_part000

  ! Subroutine: commutate_004
  SUBROUTINE commutate_004(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_004_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_004

  ! Subroutine: commutate_005_part000
  SUBROUTINE commutate_005_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 6
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values2(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_005_part000

  ! Subroutine: commutate_005
  SUBROUTINE commutate_005(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_005_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_005

  ! Subroutine: commutate_006_part000
  SUBROUTINE commutate_006_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 6
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values3(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_006_part000

  ! Subroutine: commutate_006
  SUBROUTINE commutate_006(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_006_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_006

  ! Subroutine: commutate_007_part000
  SUBROUTINE commutate_007_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 20
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values4(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_007_part000

  ! Subroutine: commutate_007
  SUBROUTINE commutate_007(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_007_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_007

  ! Subroutine: commutate_008_part000
  SUBROUTINE commutate_008_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 20
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values5(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_008_part000

  ! Subroutine: commutate_008
  SUBROUTINE commutate_008(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_008_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_008

  ! Subroutine: commutate_009_part000
  SUBROUTINE commutate_009_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 20
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values6(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_009_part000

  ! Subroutine: commutate_009
  SUBROUTINE commutate_009(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_009_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_009

  ! Subroutine: commutate_010_part000
  SUBROUTINE commutate_010_part000(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_2_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 20
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_2_b_lccL7 = offs_ham_inner_2_b_values7(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_2_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-2.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 2.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_2_b_lccL7 + 2)
      
      
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE commutate_010_part000

  ! Subroutine: commutate_010
  SUBROUTINE commutate_010(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_010_part000(res_real, rho_real, ham_real)
  END SUBROUTINE commutate_010

  ! Subroutine: commutate
  SUBROUTINE commutate(res_real, rho_real, ham_real)
    double precision, intent(INOUT), dimension(1789) :: res_real
    double precision, intent(IN), dimension(277) :: rho_real
    double precision, intent(IN), dimension(45) :: ham_real
    
    
    call commutate_000(res_real, rho_real, ham_real)
    call commutate_001(res_real, rho_real, ham_real)
    call commutate_002(res_real, rho_real, ham_real)
    call commutate_003(res_real, rho_real, ham_real)
    call commutate_004(res_real, rho_real, ham_real)
    call commutate_005(res_real, rho_real, ham_real)
    call commutate_006(res_real, rho_real, ham_real)
    call commutate_007(res_real, rho_real, ham_real)
    call commutate_008(res_real, rho_real, ham_real)
    call commutate_009(res_real, rho_real, ham_real)
    call commutate_010(res_real, rho_real, ham_real)
  END SUBROUTINE commutate

END MODULE pauli_library_comm_buf
