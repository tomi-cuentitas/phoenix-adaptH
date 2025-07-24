MODULE pauli_library
  ! IMPORTS
  
  IMPLICIT NONE
  
  ! CONSTANTS
  integer, parameter :: offs_rho_inner_0_a_values(5) = (/0, 0, 0, 0, 0/)
  integer, parameter :: offs_ham_inner_3_b_values(5) = (/9, 6, 0, 12, 3/)
  integer, parameter :: offs_res_inner_1_c_values(5) = (/10, 7, 1, 13, 4/)
  integer, parameter :: offs_rho_inner_0_a_values1(10) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 0/)
  integer, parameter :: offs_ham_inner_3_b_values1(10) = (/42, 39, 24, 18, 30, 21, 27, 36, 33, 15/)
  integer, parameter :: offs_res_inner_2_c_values(10) = (/97, 88, 43, 25, 61, 34, 52, 79, 70, 16/)
  integer, parameter :: offs_rho_inner_1_a_values(5) = (/13, 1, 10, 4, 7/)
  integer, parameter :: offs_ham_inner_3_b_values2(5) = (/12, 0, 9, 3, 6/)
  integer, parameter :: offs_res_inner_0_c_values(5) = (/0, 0, 0, 0, 0/)
  integer, parameter :: offs_rho_inner_1_a_values1(5) = (/13, 4, 7, 10, 1/)
  integer, parameter :: offs_ham_inner_3_b_values3(5) = (/12, 3, 6, 9, 0/)
  integer, parameter :: offs_res_inner_1_c_values1(5) = (/13, 4, 7, 10, 1/)
  integer, parameter :: offs_rho_inner_1_a_values2(10) = (/10, 1, 7, 4, 4, 1, 7, 1, 4, 1/)
  integer, parameter :: offs_ham_inner_3_b_values4(10) = (/12, 12, 9, 12, 6, 6, 12, 9, 9, 3/)
  integer, parameter :: offs_res_inner_2_c_values1(10) = (/97, 43, 79, 70, 52, 25, 88, 34, 61, 16/)
  integer, parameter :: offs_rho_inner_1_a_values3(10) = (/4, 7, 1, 1, 10, 4, 7, 1, 4, 1/)
  integer, parameter :: offs_ham_inner_3_b_values5(10) = (/33, 39, 18, 21, 42, 30, 36, 24, 27, 15/)
  integer, parameter :: offs_res_inner_1_c_values2(10) = (/13, 13, 7, 10, 13, 10, 10, 13, 7, 4/)
  integer, parameter :: offs_rho_inner_1_a_values4(10) = (/1, 4, 7, 4, 1, 7, 1, 4, 1, 10/)
  integer, parameter :: offs_ham_inner_3_b_values6(10) = (/18, 33, 36, 27, 15, 39, 21, 30, 24, 42/)
  integer, parameter :: offs_res_inner_2_c_values2(10) = (/25, 70, 79, 52, 16, 88, 34, 61, 43, 97/)
  integer, parameter :: offs_rho_inner_1_a_values5(10) = (/7, 1, 1, 4, 1, 4, 1, 1, 1, 4/)
  integer, parameter :: offs_ham_inner_3_b_values7(10) = (/42, 39, 33, 42, 30, 36, 27, 42, 36, 39/)
  integer, parameter :: offs_res_inner_3_c_values(10) = (/349, 214, 160, 322, 133, 268, 106, 241,    &
    187, 295/)
  integer, parameter :: offs_rho_inner_1_a_values6(10) = (/13, 13, 13, 10, 13, 4, 7, 10, 7, 10/)
  integer, parameter :: offs_ham_inner_3_b_values8(10) = (/3, 6, 9, 3, 0, 0, 3, 6, 0, 0/)
  integer, parameter :: offs_res_inner_2_c_values3(10) = (/70, 88, 97, 61, 43, 16, 52, 79, 25, 34/)
  integer, parameter :: offs_rho_inner_1_a_values7(10) = (/13, 13, 10, 13, 13, 10, 10, 4, 7, 7/)
  integer, parameter :: offs_ham_inner_3_b_values9(10) = (/33, 42, 21, 39, 24, 30, 36, 15, 18, 27/)
  integer, parameter :: offs_res_inner_1_c_values3(10) = (/4, 10, 1, 7, 1, 4, 7, 1, 1, 4/)
  integer, parameter :: offs_rho_inner_1_a_values8(10) = (/7, 13, 7, 4, 10, 13, 13, 10, 13, 10/)
  integer, parameter :: offs_ham_inner_3_b_values10(10) = (/18, 42, 27, 15, 30, 33, 24, 36, 39, 21/)
  integer, parameter :: offs_res_inner_2_c_values4(10) = (/25, 97, 52, 16, 61, 70, 43, 79, 88, 34/)
  integer, parameter :: offs_rho_inner_1_a_values9(10) = (/7, 10, 7, 4, 4, 10, 4, 7, 10, 7/)
  integer, parameter :: offs_ham_inner_3_b_values11(10) = (/24, 39, 33, 21, 24, 33, 18, 21, 24, 30/)
  integer, parameter :: offs_res_inner_3_c_values1(10) = (/214, 349, 295, 133, 160, 322, 106, 187,   &
    241, 268/)
  integer, parameter :: offs_rho_inner_1_a_values10(10) = (/10, 13, 13, 13, 13, 10, 13, 13, 7, 10/)
  integer, parameter :: offs_ham_inner_3_b_values12(10) = (/27, 30, 18, 36, 27, 18, 15, 21, 15, 15/)
  integer, parameter :: offs_res_inner_3_c_values2(10) = (/268, 322, 214, 349, 295, 187, 160, 241,   &
    106, 133/)
  integer, parameter :: offs_rho_inner_2_a_values(10) = (/34, 88, 25, 97, 70, 16, 52, 61, 79, 43/)
  integer, parameter :: offs_ham_inner_3_b_values13(10) = (/0, 6, 0, 9, 3, 0, 3, 3, 6, 0/)
  integer, parameter :: offs_res_inner_1_c_values4(10) = (/10, 13, 7, 13, 13, 4, 7, 10, 10, 13/)
  integer, parameter :: offs_rho_inner_2_a_values1(10) = (/43, 25, 16, 79, 52, 70, 88, 61, 97, 34/)
  integer, parameter :: offs_ham_inner_3_b_values14(10) = (/0, 0, 0, 6, 3, 3, 6, 3, 9, 0/)
  integer, parameter :: offs_res_inner_2_c_values5(10) = (/43, 25, 16, 79, 52, 70, 88, 61, 97, 34/)
  integer, parameter :: offs_rho_inner_2_a_values2(10) = (/79, 52, 16, 43, 61, 25, 70, 88, 34, 97/)
  integer, parameter :: offs_ham_inner_3_b_values15(10) = (/9, 6, 3, 12, 9, 6, 12, 12, 9, 12/)
  integer, parameter :: offs_res_inner_1_c_values5(10) = (/7, 4, 1, 1, 4, 1, 4, 7, 1, 10/)
  integer, parameter :: offs_rho_inner_2_a_values3(10) = (/88, 79, 34, 52, 43, 25, 61, 16, 97, 70/)
  integer, parameter :: offs_ham_inner_3_b_values16(10) = (/12, 9, 9, 6, 12, 6, 9, 3, 12, 12/)
  integer, parameter :: offs_res_inner_2_c_values6(10) = (/88, 79, 34, 52, 43, 25, 61, 16, 97, 70/)
  integer, parameter :: offs_rho_inner_2_a_values4(10) = (/34, 25, 52, 16, 52, 16, 79, 16, 61, 25/)
  integer, parameter :: offs_ham_inner_3_b_values17(10) = (/12, 12, 12, 9, 9, 6, 12, 12, 12, 9/)
  integer, parameter :: offs_res_inner_3_c_values3(10) = (/241, 214, 295, 133, 268, 106, 349, 160,   &
    322, 187/)
  integer, parameter :: offs_rho_inner_2_a_values5(10) = (/52, 16, 43, 61, 97, 25, 70, 88, 79, 34/)
  integer, parameter :: offs_ham_inner_3_b_values18(10) = (/27, 15, 24, 30, 42, 18, 33, 39, 36, 21/)
  integer, parameter :: offs_res_inner_0_c_values1(10) = (/0, 0, 0, 0, 0, 0, 0, 0, 0, 0/)
  integer, parameter :: offs_rho_inner_2_a_values6(10) = (/52, 79, 25, 43, 16, 34, 70, 61, 97, 88/)
  integer, parameter :: offs_ham_inner_3_b_values19(10) = (/27, 36, 18, 24, 15, 21, 33, 30, 42, 39/)
  integer, parameter :: offs_res_inner_2_c_values7(10) = (/52, 79, 25, 43, 16, 34, 70, 61, 97, 88/)
  integer, parameter :: offs_rho_inner_2_a_values7(10) = (/43, 97, 52, 25, 88, 70, 61, 79, 16, 34/)
  integer, parameter :: offs_ham_inner_3_b_values20(10) = (/24, 42, 27, 18, 39, 33, 30, 36, 15, 21/)
  integer, parameter :: offs_res_inner_1_c_values6(10) = (/13, 13, 7, 7, 13, 13, 10, 10, 4, 10/)
  integer, parameter :: offs_rho_inner_2_a_values8(10) = (/34, 25, 43, 88, 97, 61, 16, 52, 70, 79/)
  integer, parameter :: offs_ham_inner_3_b_values21(10) = (/21, 18, 24, 39, 42, 30, 15, 27, 33, 36/)
  integer, parameter :: offs_res_inner_1_c_values7(10) = (/1, 1, 1, 7, 10, 4, 1, 4, 4, 7/)
  integer, parameter :: offs_rho_inner_2_a_values9(10) = (/34, 52, 79, 52, 25, 25, 61, 16, 16, 16/)
  integer, parameter :: offs_ham_inner_3_b_values22(10) = (/24, 33, 39, 30, 24, 21, 33, 24, 18, 21/)
  integer, parameter :: offs_res_inner_2_c_values8(10) = (/97, 88, 97, 79, 88, 79, 97, 70, 52, 61/)
  integer, parameter :: offs_rho_inner_2_a_values10(10) = (/25, 25, 16, 61, 79, 52, 16, 52, 34, 16/)
  integer, parameter :: offs_ham_inner_3_b_values23(10) = (/21, 24, 24, 33, 39, 33, 18, 30, 24, 21/)
  integer, parameter :: offs_res_inner_3_c_values4(10) = (/187, 214, 160, 322, 349, 295, 106, 268,   &
    241, 133/)
  integer, parameter :: offs_rho_inner_2_a_values11(10) = (/61, 16, 25, 52, 16, 34, 52, 79, 25, 16/)
  integer, parameter :: offs_ham_inner_3_b_values24(10) = (/42, 27, 36, 36, 33, 42, 39, 42, 39, 30/)
  integer, parameter :: offs_res_inner_2_c_values9(10) = (/70, 25, 34, 61, 43, 43, 70, 88, 43, 34/)
  integer, parameter :: offs_rho_inner_2_a_values12(10) = (/16, 25, 52, 16, 34, 61, 79, 16, 52, 25/)
  integer, parameter :: offs_ham_inner_3_b_values25(10) = (/30, 36, 39, 27, 42, 42, 42, 33, 36, 39/)
  integer, parameter :: offs_res_inner_3_c_values5(10) = (/133, 187, 295, 106, 241, 322, 349, 160,   &
    268, 214/)
  integer, parameter :: offs_rho_inner_2_a_values13(10) = (/88, 43, 34, 70, 34, 43, 43, 61, 70, 25/)
  integer, parameter :: offs_ham_inner_3_b_values26(10) = (/9, 3, 6, 6, 3, 6, 9, 6, 9, 3/)
  integer, parameter :: offs_res_inner_3_c_values6(10) = (/349, 160, 187, 295, 133, 214, 241, 268,   &
    322, 106/)
  integer, parameter :: offs_rho_inner_2_a_values14(10) = (/34, 88, 34, 43, 43, 70, 70, 61, 43, 25/)
  integer, parameter :: offs_ham_inner_3_b_values27(10) = (/15, 36, 18, 18, 21, 30, 27, 27, 15, 15/)
  integer, parameter :: offs_res_inner_2_c_values10(10) = (/61, 97, 79, 88, 97, 97, 88, 79, 70, 52/)
  integer, parameter :: offs_rho_inner_2_a_values15(10) = (/70, 34, 61, 43, 43, 25, 34, 43, 88, 70/)
  integer, parameter :: offs_ham_inner_3_b_values28(10) = (/27, 15, 27, 15, 21, 15, 18, 18, 36, 30/)
  integer, parameter :: offs_res_inner_3_c_values7(10) = (/295, 133, 268, 160, 241, 106, 187, 214,   &
    349, 322/)
  integer, parameter :: offs_rho_inner_2_a_values16(10) = (/43, 43, 43, 70, 34, 61, 25, 88, 70, 34/)
  integer, parameter :: offs_ham_inner_3_b_values29(10) = (/33, 42, 39, 39, 30, 36, 27, 42, 42, 36/)
  integer, parameter :: offs_res_inner_2_c_values11(10) = (/16, 34, 25, 52, 16, 52, 16, 79, 61, 25/)
  integer, parameter :: offs_rho_inner_2_a_values17(10) = (/70, 70, 43, 34, 43, 25, 34, 61, 43, 88/)
  integer, parameter :: offs_ham_inner_3_b_values30(10) = (/39, 42, 33, 36, 39, 27, 30, 36, 42, 42/)
  integer, parameter :: offs_res_inner_3_c_values8(10) = (/295, 322, 160, 187, 214, 106, 133, 268,   &
    241, 349/)
  integer, parameter :: offs_rho_inner_2_a_values18(10) = (/79, 97, 52, 70, 97, 79, 88, 97, 61, 88/)
  integer, parameter :: offs_ham_inner_3_b_values31(10) = (/0, 6, 0, 0, 0, 3, 3, 3, 0, 0/)
  integer, parameter :: offs_res_inner_3_c_values9(10) = (/187, 349, 106, 160, 241, 268, 295, 322,   &
    133, 214/)
  integer, parameter :: offs_rho_inner_2_a_values19(10) = (/88, 70, 61, 88, 79, 79, 97, 97, 52, 97/)
  integer, parameter :: offs_ham_inner_3_b_values32(10) = (/27, 15, 15, 18, 18, 27, 30, 21, 15, 36/)
  integer, parameter :: offs_res_inner_2_c_values12(10) = (/70, 43, 34, 43, 34, 61, 70, 43, 25, 88/)
  integer, parameter :: offs_rho_inner_2_a_values20(10) = (/97, 88, 79, 97, 52, 88, 97, 79, 61, 70/)
  integer, parameter :: offs_ham_inner_3_b_values33(10) = (/21, 27, 27, 30, 15, 18, 36, 18, 15, 15/)
  integer, parameter :: offs_res_inner_3_c_values10(10) = (/241, 295, 268, 322, 106, 214, 349, 187,  &
    133, 160/)
  integer, parameter :: offs_rho_inner_2_a_values21(10) = (/61, 79, 79, 97, 52, 88, 97, 88, 97, 70/)
  integer, parameter :: offs_ham_inner_3_b_values34(10) = (/21, 30, 21, 33, 18, 24, 39, 33, 24, 24/)
  integer, parameter :: offs_res_inner_2_c_values13(10) = (/16, 52, 25, 61, 16, 25, 79, 52, 34, 16/)
  integer, parameter :: offs_rho_inner_2_a_values22(10) = (/70, 97, 52, 97, 88, 61, 79, 79, 88, 97/)
  integer, parameter :: offs_ham_inner_3_b_values35(10) = (/24, 24, 18, 33, 24, 21, 30, 21, 33, 39/)
  integer, parameter :: offs_res_inner_3_c_values11(10) = (/160, 241, 106, 322, 214, 133, 268, 187,  &
    295, 349/)
  integer, parameter :: offs_rho_inner_3_a_values(10) = (/214, 160, 106, 187, 241, 322, 349, 295,    &
    268, 133/)
  integer, parameter :: offs_ham_inner_3_b_values36(10) = (/0, 0, 0, 0, 0, 3, 6, 3, 3, 0/)
  integer, parameter :: offs_res_inner_2_c_values14(10) = (/88, 70, 52, 79, 97, 97, 97, 88, 79, 61/)
  integer, parameter :: offs_rho_inner_3_a_values1(10) = (/133, 268, 322, 295, 241, 349, 160, 106,   &
    187, 214/)
  integer, parameter :: offs_ham_inner_3_b_values37(10) = (/0, 3, 3, 3, 0, 6, 0, 0, 0, 0/)
  integer, parameter :: offs_res_inner_3_c_values12(10) = (/133, 268, 322, 295, 241, 349, 160, 106,  &
    187, 214/)
  integer, parameter :: offs_rho_inner_3_a_values2(10) = (/295, 160, 322, 268, 241, 349, 106, 133,   &
    187, 214/)
  integer, parameter :: offs_ham_inner_3_b_values38(10) = (/6, 3, 9, 6, 9, 9, 3, 3, 6, 6/)
  integer, parameter :: offs_res_inner_2_c_values15(10) = (/70, 43, 70, 61, 43, 88, 25, 34, 34, 43/)
  integer, parameter :: offs_rho_inner_3_a_values3(10) = (/106, 187, 133, 214, 160, 295, 322, 241,   &
    268, 349/)
  integer, parameter :: offs_ham_inner_3_b_values39(10) = (/3, 6, 3, 6, 3, 6, 9, 9, 6, 9/)
  integer, parameter :: offs_res_inner_3_c_values13(10) = (/106, 187, 133, 214, 160, 295, 322, 241,  &
    268, 349/)
  integer, parameter :: offs_rho_inner_3_a_values4(10) = (/241, 214, 106, 322, 268, 187, 295, 160,   &
    349, 133/)
  integer, parameter :: offs_ham_inner_3_b_values40(10) = (/12, 12, 6, 12, 9, 9, 12, 12, 12, 9/)
  integer, parameter :: offs_res_inner_2_c_values16(10) = (/34, 25, 16, 61, 52, 25, 52, 16, 79, 16/)
  integer, parameter :: offs_rho_inner_3_a_values5(10) = (/106, 160, 349, 187, 295, 214, 133, 322,   &
    241, 268/)
  integer, parameter :: offs_ham_inner_3_b_values41(10) = (/6, 12, 12, 9, 12, 12, 9, 12, 12, 9/)
  integer, parameter :: offs_res_inner_3_c_values14(10) = (/106, 160, 349, 187, 295, 214, 133, 322,  &
    241, 268/)
  integer, parameter :: offs_rho_inner_3_a_values6(10) = (/214, 349, 133, 268, 241, 322, 106, 160,   &
    187, 295/)
  integer, parameter :: offs_ham_inner_3_b_values42(10) = (/18, 36, 15, 27, 21, 30, 15, 15, 18, 27/)
  integer, parameter :: offs_res_inner_1_c_values8(10) = (/13, 13, 10, 10, 13, 13, 7, 13, 10, 13/)
  integer, parameter :: offs_rho_inner_3_a_values7(10) = (/349, 106, 160, 214, 268, 322, 133, 295,   &
    187, 241/)
  integer, parameter :: offs_ham_inner_3_b_values43(10) = (/36, 15, 15, 18, 27, 30, 15, 27, 18, 21/)
  integer, parameter :: offs_res_inner_3_c_values15(10) = (/349, 106, 160, 214, 268, 322, 133, 295,  &
    187, 241/)
  integer, parameter :: offs_rho_inner_3_a_values8(10) = (/241, 322, 349, 268, 187, 295, 106, 133,   &
    214, 160/)
  integer, parameter :: offs_ham_inner_3_b_values44(10) = (/21, 30, 36, 27, 18, 27, 15, 15, 18, 15/)
  integer, parameter :: offs_res_inner_2_c_values17(10) = (/97, 97, 97, 79, 79, 88, 52, 61, 88, 70/)
  integer, parameter :: offs_rho_inner_3_a_values9(10) = (/322, 295, 349, 214, 241, 133, 268, 187,   &
    106, 160/)
  integer, parameter :: offs_ham_inner_3_b_values45(10) = (/30, 27, 36, 18, 21, 15, 27, 18, 15, 15/)
  integer, parameter :: offs_res_inner_2_c_values18(10) = (/70, 70, 88, 43, 43, 34, 61, 34, 25, 43/)
  integer, parameter :: offs_rho_inner_3_a_values10(10) = (/106, 187, 322, 268, 349, 133, 241, 214,  &
    160, 295/)
  integer, parameter :: offs_ham_inner_3_b_values46(10) = (/18, 21, 33, 30, 39, 21, 24, 24, 24, 33/)
  integer, parameter :: offs_res_inner_1_c_values9(10) = (/4, 7, 10, 7, 10, 4, 10, 7, 4, 7/)
  integer, parameter :: offs_rho_inner_3_a_values11(10) = (/349, 268, 241, 322, 160, 214, 187, 106,  &
    133, 295/)
  integer, parameter :: offs_ham_inner_3_b_values47(10) = (/39, 30, 24, 33, 24, 24, 21, 18, 21, 33/)
  integer, parameter :: offs_res_inner_3_c_values16(10) = (/349, 268, 241, 322, 160, 214, 187, 106,  &
    133, 295/)
  integer, parameter :: offs_rho_inner_3_a_values12(10) = (/322, 187, 214, 106, 160, 349, 295, 268,  &
    133, 241/)
  integer, parameter :: offs_ham_inner_3_b_values48(10) = (/33, 21, 24, 18, 24, 39, 33, 30, 21, 24/)
  integer, parameter :: offs_res_inner_2_c_values19(10) = (/97, 79, 88, 52, 70, 97, 88, 79, 61, 97/)
  integer, parameter :: offs_rho_inner_3_a_values13(10) = (/187, 268, 133, 322, 160, 214, 349, 106,  &
    241, 295/)
  integer, parameter :: offs_ham_inner_3_b_values49(10) = (/21, 30, 21, 33, 24, 24, 39, 18, 24, 33/)
  integer, parameter :: offs_res_inner_2_c_values20(10) = (/25, 52, 16, 61, 16, 25, 79, 16, 34, 52/)
  integer, parameter :: offs_rho_inner_3_a_values14(5) = (/106, 106, 133, 187, 268/)
  integer, parameter :: offs_ham_inner_3_b_values50(5) = (/24, 21, 24, 24, 33/)
  integer, parameter :: offs_res_inner_3_c_values17(5) = (/295, 268, 322, 349, 349/)
  integer, parameter :: offs_rho_inner_3_a_values15(10) = (/106, 187, 322, 349, 160, 241, 133, 268,  &
    214, 295/)
  integer, parameter :: offs_ham_inner_3_b_values51(10) = (/27, 36, 42, 42, 33, 42, 30, 36, 39, 39/)
  integer, parameter :: offs_res_inner_1_c_values10(10) = (/1, 1, 4, 7, 1, 1, 1, 4, 1, 4/)
  integer, parameter :: offs_rho_inner_3_a_values16(10) = (/241, 187, 160, 214, 295, 133, 322, 349,  &
    268, 106/)
  integer, parameter :: offs_ham_inner_3_b_values52(10) = (/42, 36, 33, 39, 39, 30, 42, 42, 36, 27/)
  integer, parameter :: offs_res_inner_3_c_values18(10) = (/241, 187, 160, 214, 295, 133, 322, 349,  &
    268, 106/)
  integer, parameter :: offs_rho_inner_3_a_values17(10) = (/187, 268, 214, 241, 133, 106, 295, 349,  &
    160, 322/)
  integer, parameter :: offs_ham_inner_3_b_values53(10) = (/36, 36, 39, 42, 30, 27, 39, 42, 33, 42/)
  integer, parameter :: offs_res_inner_2_c_values21(10) = (/34, 61, 43, 43, 34, 25, 70, 88, 43, 70/)
  integer, parameter :: offs_rho_inner_3_a_values18(10) = (/268, 133, 349, 295, 322, 241, 187, 214,  &
    106, 160/)
  integer, parameter :: offs_ham_inner_3_b_values54(10) = (/36, 30, 42, 39, 42, 42, 36, 39, 27, 33/)
  integer, parameter :: offs_res_inner_2_c_values22(10) = (/52, 16, 79, 52, 61, 34, 25, 25, 16, 16/)
  integer, parameter :: offs_rho_inner_3_a_values19(5) = (/268, 133, 106, 187, 106/)
  integer, parameter :: offs_ham_inner_3_b_values55(5) = (/39, 33, 30, 39, 33/)
  integer, parameter :: offs_res_inner_3_c_values19(5) = (/322, 241, 187, 241, 214/)
  integer, parameter :: offs_rho_inner_3_a_values20(5) = (/187, 106, 268, 133, 106/)
  integer, parameter :: offs_ham_inner_3_b_values56(5) = (/42, 36, 42, 42, 39/)
  integer, parameter :: offs_res_inner_3_c_values20(5) = (/214, 133, 295, 160, 160/)
  integer, parameter :: offs_rho_inner_3_a_values21(5) = (/160, 214, 133, 160, 295/)
  integer, parameter :: offs_ham_inner_3_b_values57(5) = (/18, 21, 18, 21, 30/)
  integer, parameter :: offs_res_inner_3_c_values21(5) = (/295, 349, 268, 322, 349/)
  integer, parameter :: offs_rho_inner_3_a_values22(5) = (/214, 295, 160, 133, 160/)
  integer, parameter :: offs_ham_inner_3_b_values58(5) = (/36, 36, 27, 27, 30/)
  integer, parameter :: offs_res_inner_3_c_values22(5) = (/241, 322, 214, 187, 241/)
  integer, parameter :: offs_rho_inner_3_a_values23(5) = (/133, 214, 295, 160, 160/)
  integer, parameter :: offs_ham_inner_3_b_values59(5) = (/36, 42, 42, 42, 39/)
  integer, parameter :: offs_res_inner_3_c_values23(5) = (/106, 187, 268, 133, 106/)
  integer, parameter :: offs_rho_inner_3_a_values24(5) = (/187, 214, 241, 241, 322/)
  integer, parameter :: offs_ham_inner_3_b_values60(5) = (/15, 15, 15, 18, 27/)
  integer, parameter :: offs_res_inner_3_c_values24(5) = (/268, 295, 322, 349, 349/)
  integer, parameter :: offs_rho_inner_3_a_values25(5) = (/241, 322, 187, 241, 214/)
  integer, parameter :: offs_ham_inner_3_b_values61(5) = (/30, 36, 27, 36, 27/)
  integer, parameter :: offs_res_inner_3_c_values25(5) = (/160, 295, 133, 214, 160/)
  integer, parameter :: offs_rho_inner_3_a_values26(5) = (/322, 241, 241, 214, 187/)
  integer, parameter :: offs_ham_inner_3_b_values62(5) = (/39, 39, 33, 33, 30/)
  integer, parameter :: offs_res_inner_3_c_values26(5) = (/268, 187, 133, 106, 106/)
  integer, parameter :: offs_rho_inner_3_a_values27(5) = (/295, 349, 268, 322, 349/)
  integer, parameter :: offs_ham_inner_3_b_values63(5) = (/15, 18, 15, 15, 27/)
  integer, parameter :: offs_res_inner_3_c_values27(5) = (/214, 241, 187, 241, 322/)
  integer, parameter :: offs_rho_inner_3_a_values28(5) = (/349, 349, 295, 322, 268/)
  integer, parameter :: offs_ham_inner_3_b_values64(5) = (/30, 21, 18, 21, 18/)
  integer, parameter :: offs_res_inner_3_c_values28(5) = (/295, 214, 160, 160, 133/)
  integer, parameter :: offs_rho_inner_3_a_values29(5) = (/322, 268, 349, 349, 295/)
  integer, parameter :: offs_ham_inner_3_b_values65(5) = (/24, 21, 33, 24, 24/)
  integer, parameter :: offs_res_inner_3_c_values29(5) = (/133, 106, 268, 187, 106/)
  
  CONTAINS
  
  ! ROUTINES
  

  ! Subroutine: multiply_000
  SUBROUTINE multiply_000(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_0_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_0_a_lccL7 = offs_rho_inner_0_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_000

  ! Subroutine: multiply_001
  SUBROUTINE multiply_001(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_0_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_0_a_lccL7 = offs_rho_inner_0_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values1(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_0_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_0_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_001

  ! Subroutine: multiply_002
  SUBROUTINE multiply_002(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_0_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values2(loc_fmfcL8 + 1)
      offs_res_inner_0_c_lccL7 = offs_res_inner_0_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_002

  ! Subroutine: multiply_003
  SUBROUTINE multiply_003(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values3(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_003

  ! Subroutine: multiply_004
  SUBROUTINE multiply_004(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values4(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_004

  ! Subroutine: multiply_005
  SUBROUTINE multiply_005(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values5(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_005

  ! Subroutine: multiply_006
  SUBROUTINE multiply_006(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values6(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_006

  ! Subroutine: multiply_007
  SUBROUTINE multiply_007(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values7(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_007

  ! Subroutine: multiply_008
  SUBROUTINE multiply_008(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values8(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_008

  ! Subroutine: multiply_009
  SUBROUTINE multiply_009(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values9(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_009

  ! Subroutine: multiply_010
  SUBROUTINE multiply_010(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values8(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values10(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values4(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_010

  ! Subroutine: multiply_011
  SUBROUTINE multiply_011(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values9(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values11(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_011

  ! Subroutine: multiply_012
  SUBROUTINE multiply_012(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_1_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_1_a_lccL7 = offs_rho_inner_1_a_values10(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values12(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values2(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_1_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_1_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_012

  ! Subroutine: multiply_013
  SUBROUTINE multiply_013(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values13(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values4(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_013

  ! Subroutine: multiply_014
  SUBROUTINE multiply_014(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values14(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values5(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_014

  ! Subroutine: multiply_015
  SUBROUTINE multiply_015(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values15(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values5(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_015

  ! Subroutine: multiply_016
  SUBROUTINE multiply_016(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values16(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values6(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_016

  ! Subroutine: multiply_017
  SUBROUTINE multiply_017(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values17(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values3(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_017

  ! Subroutine: multiply_018
  SUBROUTINE multiply_018(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_0_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values18(loc_fmfcL8 + 1)
      offs_res_inner_0_c_lccL7 = offs_res_inner_0_c_values1(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_0_c_lccL7 + 1) = res_real(offs_res_inner_0_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_0_c_lccL7 + 1) = res_imag(offs_res_inner_0_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_018

  ! Subroutine: multiply_019
  SUBROUTINE multiply_019(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values19(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values7(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_019

  ! Subroutine: multiply_020
  SUBROUTINE multiply_020(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values20(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values6(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_020

  ! Subroutine: multiply_021
  SUBROUTINE multiply_021(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values8(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values21(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values7(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_021

  ! Subroutine: multiply_022
  SUBROUTINE multiply_022(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values9(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values22(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values8(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_022

  ! Subroutine: multiply_023
  SUBROUTINE multiply_023(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values10(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values23(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values4(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_023

  ! Subroutine: multiply_024
  SUBROUTINE multiply_024(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values11(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values24(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values9(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_024

  ! Subroutine: multiply_025
  SUBROUTINE multiply_025(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values12(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values25(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values5(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_025

  ! Subroutine: multiply_026
  SUBROUTINE multiply_026(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values13(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values26(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values6(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_026

  ! Subroutine: multiply_027
  SUBROUTINE multiply_027(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values14(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values27(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values10(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_027

  ! Subroutine: multiply_028
  SUBROUTINE multiply_028(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values15(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values28(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values7(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_028

  ! Subroutine: multiply_029
  SUBROUTINE multiply_029(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values16(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values29(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values11(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_029

  ! Subroutine: multiply_030
  SUBROUTINE multiply_030(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values17(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values30(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values8(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_030

  ! Subroutine: multiply_031
  SUBROUTINE multiply_031(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values18(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values31(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values9(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_031

  ! Subroutine: multiply_032
  SUBROUTINE multiply_032(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values19(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values32(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values12(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_032

  ! Subroutine: multiply_033
  SUBROUTINE multiply_033(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values20(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values33(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values10(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_033

  ! Subroutine: multiply_034
  SUBROUTINE multiply_034(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values21(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values34(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values13(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_034

  ! Subroutine: multiply_035
  SUBROUTINE multiply_035(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_2_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_2_a_lccL7 = offs_rho_inner_2_a_values22(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values35(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values11(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_2_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_2_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_035

  ! Subroutine: multiply_036
  SUBROUTINE multiply_036(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values36(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values14(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_036

  ! Subroutine: multiply_037
  SUBROUTINE multiply_037(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values1(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values37(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values12(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_037

  ! Subroutine: multiply_038
  SUBROUTINE multiply_038(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values2(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values38(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values15(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_038

  ! Subroutine: multiply_039
  SUBROUTINE multiply_039(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values3(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values39(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values13(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_039

  ! Subroutine: multiply_040
  SUBROUTINE multiply_040(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values4(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values40(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values16(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_040

  ! Subroutine: multiply_041
  SUBROUTINE multiply_041(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values5(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values41(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values14(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_041

  ! Subroutine: multiply_042
  SUBROUTINE multiply_042(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values6(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values42(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values8(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_042

  ! Subroutine: multiply_043
  SUBROUTINE multiply_043(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values7(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values43(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values15(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_043

  ! Subroutine: multiply_044
  SUBROUTINE multiply_044(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values8(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values44(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values17(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_044

  ! Subroutine: multiply_045
  SUBROUTINE multiply_045(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values9(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values45(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values18(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_045

  ! Subroutine: multiply_046
  SUBROUTINE multiply_046(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values10(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values46(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values9(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_046

  ! Subroutine: multiply_047
  SUBROUTINE multiply_047(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values11(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values47(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values16(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_047

  ! Subroutine: multiply_048
  SUBROUTINE multiply_048(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values12(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values48(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values19(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_048

  ! Subroutine: multiply_049
  SUBROUTINE multiply_049(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values13(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values49(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values20(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_049

  ! Subroutine: multiply_050
  SUBROUTINE multiply_050(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values14(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values50(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values17(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_050

  ! Subroutine: multiply_051
  SUBROUTINE multiply_051(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_1_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values15(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values51(loc_fmfcL8 + 1)
      offs_res_inner_1_c_lccL7 = offs_res_inner_1_c_values10(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 1) = res_real(offs_res_inner_1_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 1) = res_imag(offs_res_inner_1_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 2) = res_real(offs_res_inner_1_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 2) = res_imag(offs_res_inner_1_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_1_c_lccL7 + 3) = res_real(offs_res_inner_1_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_1_c_lccL7 + 3) = res_imag(offs_res_inner_1_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_051

  ! Subroutine: multiply_052
  SUBROUTINE multiply_052(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values16(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values52(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values18(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_052

  ! Subroutine: multiply_053
  SUBROUTINE multiply_053(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values17(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values53(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values21(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_053

  ! Subroutine: multiply_054
  SUBROUTINE multiply_054(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_2_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 9
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values18(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values54(loc_fmfcL8 + 1)
      offs_res_inner_2_c_lccL7 = offs_res_inner_2_c_values22(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 3) = res_real(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 3) = res_imag(offs_res_inner_2_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 2) = res_real(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 2) = res_imag(offs_res_inner_2_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 1) = res_real(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 1) = res_imag(offs_res_inner_2_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 6) = res_real(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 6) = res_imag(offs_res_inner_2_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 5) = res_real(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 5) = res_imag(offs_res_inner_2_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 4) = res_real(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 4) = res_imag(offs_res_inner_2_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 9) = res_real(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 9) = res_imag(offs_res_inner_2_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_2_c_lccL7 + 8) = res_real(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_2_c_lccL7 + 8) = res_imag(offs_res_inner_2_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_2_c_lccL7 + 7) = res_real(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + (-1.0) * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_2_c_lccL7 + 7) = res_imag(offs_res_inner_2_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_054

  ! Subroutine: multiply_055
  SUBROUTINE multiply_055(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values19(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values55(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values19(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_055

  ! Subroutine: multiply_056
  SUBROUTINE multiply_056(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values20(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values56(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values20(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_056

  ! Subroutine: multiply_057
  SUBROUTINE multiply_057(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values21(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values57(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values21(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_057

  ! Subroutine: multiply_058
  SUBROUTINE multiply_058(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values22(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values58(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values22(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_058

  ! Subroutine: multiply_059
  SUBROUTINE multiply_059(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values23(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values59(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values23(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_059

  ! Subroutine: multiply_060
  SUBROUTINE multiply_060(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values24(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values60(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values24(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_060

  ! Subroutine: multiply_061
  SUBROUTINE multiply_061(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values25(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values61(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values25(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_061

  ! Subroutine: multiply_062
  SUBROUTINE multiply_062(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values26(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values62(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values26(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_062

  ! Subroutine: multiply_063
  SUBROUTINE multiply_063(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values27(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values63(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values27(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_063

  ! Subroutine: multiply_064
  SUBROUTINE multiply_064(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values28(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values64(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values28(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_064

  ! Subroutine: multiply_065
  SUBROUTINE multiply_065(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    integer :: offs_rho_inner_3_a_lccL7
    integer :: offs_ham_inner_3_b_lccL7
    integer :: offs_res_inner_3_c_lccL7
    integer :: loc_fmfcL8
    
    DO loc_fmfcL8 = 0, 4
      offs_rho_inner_3_a_lccL7 = offs_rho_inner_3_a_values29(loc_fmfcL8 + 1)
      offs_ham_inner_3_b_lccL7 = offs_ham_inner_3_b_values65(loc_fmfcL8 + 1)
      offs_res_inner_3_c_lccL7 = offs_res_inner_3_c_values29(loc_fmfcL8 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 1) = res_real(offs_res_inner_3_c_lccL7 + 1) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 1) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 1) = res_imag(offs_res_inner_3_c_lccL7 + 1) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 1) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 10) = res_real(offs_res_inner_3_c_lccL7 + 10) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 2) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 10) = res_imag(offs_res_inner_3_c_lccL7 + 10) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 2) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 19) = res_real(offs_res_inner_3_c_lccL7 + 19) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 3) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 19) = res_imag(offs_res_inner_3_c_lccL7 + 19) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 3) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 2) = res_real(offs_res_inner_3_c_lccL7 + 2) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 4) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 2) = res_imag(offs_res_inner_3_c_lccL7 + 2) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 4) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 11) = res_real(offs_res_inner_3_c_lccL7 + 11) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 5) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 11) = res_imag(offs_res_inner_3_c_lccL7 + 11) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 5) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 20) = res_real(offs_res_inner_3_c_lccL7 + 20) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 6) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 20) = res_imag(offs_res_inner_3_c_lccL7 + 20) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 6) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 3) = res_real(offs_res_inner_3_c_lccL7 + 3) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 7) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 3) = res_imag(offs_res_inner_3_c_lccL7 + 3) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 7) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 12) = res_real(offs_res_inner_3_c_lccL7 + 12) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 8) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 12) = res_imag(offs_res_inner_3_c_lccL7 + 12) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 8) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 21) = res_real(offs_res_inner_3_c_lccL7 + 21) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 9) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 21) = res_imag(offs_res_inner_3_c_lccL7 + 21) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 9) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 4) = res_real(offs_res_inner_3_c_lccL7 + 4) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 10) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 4) = res_imag(offs_res_inner_3_c_lccL7 + 4) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 10) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 13) = res_real(offs_res_inner_3_c_lccL7 + 13) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 11) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 13) = res_imag(offs_res_inner_3_c_lccL7 + 13) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 11) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 22) = res_real(offs_res_inner_3_c_lccL7 + 22) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 12) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 22) = res_imag(offs_res_inner_3_c_lccL7 + 22) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 12) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 5) = res_real(offs_res_inner_3_c_lccL7 + 5) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 13) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 5) = res_imag(offs_res_inner_3_c_lccL7 + 5) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 13) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 14) = res_real(offs_res_inner_3_c_lccL7 + 14) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 14) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 14) = res_imag(offs_res_inner_3_c_lccL7 + 14) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 14) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 23) = res_real(offs_res_inner_3_c_lccL7 + 23) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 15) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 23) = res_imag(offs_res_inner_3_c_lccL7 + 23) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 15) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 6) = res_real(offs_res_inner_3_c_lccL7 + 6) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 16) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 6) = res_imag(offs_res_inner_3_c_lccL7 + 6) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 16) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 15) = res_real(offs_res_inner_3_c_lccL7 + 15) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 17) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 15) = res_imag(offs_res_inner_3_c_lccL7 + 15) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 17) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 24) = res_real(offs_res_inner_3_c_lccL7 + 24) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 18) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 24) = res_imag(offs_res_inner_3_c_lccL7 + 24) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 18) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 7) = res_real(offs_res_inner_3_c_lccL7 + 7) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 19) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 7) = res_imag(offs_res_inner_3_c_lccL7 + 7) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 19) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 16) = res_real(offs_res_inner_3_c_lccL7 + 16) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 20) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 16) = res_imag(offs_res_inner_3_c_lccL7 + 16) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 20) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 25) = res_real(offs_res_inner_3_c_lccL7 + 25) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 21) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 25) = res_imag(offs_res_inner_3_c_lccL7 + 25) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 21) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 8) = res_real(offs_res_inner_3_c_lccL7 + 8) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 22) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 8) = res_imag(offs_res_inner_3_c_lccL7 + 8) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 22) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 17) = res_real(offs_res_inner_3_c_lccL7 + 17) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 23) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 17) = res_imag(offs_res_inner_3_c_lccL7 + 17) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 23) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 26) = res_real(offs_res_inner_3_c_lccL7 + 26) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 24) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 26) = res_imag(offs_res_inner_3_c_lccL7 + 26) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 24) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_real(offs_res_inner_3_c_lccL7 + 9) = res_real(offs_res_inner_3_c_lccL7 + 9) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 25) * ham_real(offs_ham_inner_3_b_lccL7 + 1)
      res_imag(offs_res_inner_3_c_lccL7 + 9) = res_imag(offs_res_inner_3_c_lccL7 + 9) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 25) * ham_imag(offs_ham_inner_3_b_lccL7 + 1)
      
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_real(offs_res_inner_3_c_lccL7 + 18) = res_real(offs_res_inner_3_c_lccL7 + 18) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 26) * ham_real(offs_ham_inner_3_b_lccL7 + 2)
      res_imag(offs_res_inner_3_c_lccL7 + 18) = res_imag(offs_res_inner_3_c_lccL7 + 18) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 26) * ham_imag(offs_ham_inner_3_b_lccL7 + 2)
      
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_real(offs_res_inner_3_c_lccL7 + 27) = res_real(offs_res_inner_3_c_lccL7 + 27) + (-1.0) * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_imag(offs_rho_inner_3_a_lccL7 + 27) * ham_real(offs_ham_inner_3_b_lccL7 + 3)
      res_imag(offs_res_inner_3_c_lccL7 + 27) = res_imag(offs_res_inner_3_c_lccL7 + 27) + 1.0 * rho_real(offs_rho_inner_3_a_lccL7 + 27) * ham_imag(offs_ham_inner_3_b_lccL7 + 3)
      
    END DO  ! loc_fmfcL8
  END SUBROUTINE multiply_065

  ! Subroutine: multiply
  SUBROUTINE multiply(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    double precision, intent(IN), dimension(376) :: rho_real
    double precision, intent(IN), dimension(376) :: rho_imag
    double precision, intent(IN), dimension(45) :: ham_real
    double precision, intent(IN), dimension(45) :: ham_imag
    double precision, intent(OUT), dimension(376) :: res_real
    double precision, intent(OUT), dimension(376) :: res_imag
    
    
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
    call multiply_024(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_025(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_026(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_027(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_028(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_029(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_030(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_031(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_032(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_033(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_034(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_035(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_036(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_037(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_038(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_039(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_040(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_041(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_042(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_043(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_044(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_045(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_046(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_047(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_048(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_049(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_050(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_051(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_052(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_053(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_054(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_055(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_056(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_057(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_058(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_059(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_060(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_061(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_062(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_063(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_064(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
    call multiply_065(rho_real, rho_imag, ham_real, ham_imag, res_real, res_imag)
  END SUBROUTINE multiply

END MODULE pauli_library
