!> adapt_heisenberg_step.f90
!!
!! Generic fused “one basis step” routine:
!!   tmp = [H, b_in]      (computed by an already-generated Phoenix commutator routine)
!!   b_out = π_m^{σ0}(tmp)  (applied via a precomputed sparse linear map)
!!
!! This file is deliberately independent from Phoenix internals; it assumes:
!! - You already have a Fortran subroutine `commutate` (or similar) produced by Phoenix
!!   that fills `tmp_*` arrays from `ham_*` and `bin_*`.
!! - You precompute the projection map in Python (weights depend on σ0 and m), and pass it
!!   as COO-style arrays (src_idx, dst_idx, weight).
!!
!! Notes:
!! - Indices are 1-based Fortran indices into the flattened coefficient arrays.
!! - The projection map must only target <=m-body terms (dst indices). It may reference
!!   any src indices up to m_int (src indices).
!! - If you use complex coefficients split into real/imag arrays, weights are real and
!!   applied identically to both parts.

module adapt_heisenberg_step_mod
  implicit none

contains

  subroutine apply_projection_map_real(n_src, src, n_dst, dst, nnz, src_idx, dst_idx, w)
    integer, intent(in) :: n_src, n_dst, nnz
    real(8), intent(in) :: src(n_src)
    real(8), intent(inout) :: dst(n_dst)
    integer, intent(in) :: src_idx(nnz), dst_idx(nnz)
    real(8), intent(in) :: w(nnz)

    integer :: k, is, id

    dst(:) = 0.0d0
    do k = 1, nnz
      is = src_idx(k)
      id = dst_idx(k)
      dst(id) = dst(id) + w(k) * src(is)
    end do
  end subroutine apply_projection_map_real


  subroutine apply_projection_map_cplx(n_src, src_r, src_i, n_dst, dst_r, dst_i, nnz, src_idx, dst_idx, w)
    integer, intent(in) :: n_src, n_dst, nnz
    real(8), intent(in) :: src_r(n_src), src_i(n_src)
    real(8), intent(inout) :: dst_r(n_dst), dst_i(n_dst)
    integer, intent(in) :: src_idx(nnz), dst_idx(nnz)
    real(8), intent(in) :: w(nnz)

    integer :: k, is, id

    dst_r(:) = 0.0d0
    dst_i(:) = 0.0d0
    do k = 1, nnz
      is = src_idx(k)
      id = dst_idx(k)
      dst_r(id) = dst_r(id) + w(k) * src_r(is)
      dst_i(id) = dst_i(id) + w(k) * src_i(is)
    end do
  end subroutine apply_projection_map_cplx


  !> One basis-step for REAL coefficients:
  !!   tmp = commutate(ham, bin)
  !!   bout = P(tmp)
  subroutine basis_step_real(n_big, ham, bin, tmp, n_small, bout, nnzP, p_src, p_dst, p_w)
    integer, intent(in) :: n_big, n_small, nnzP
    real(8), intent(in) :: ham(n_big)
    real(8), intent(in) :: bin(n_big)
    real(8), intent(inout) :: tmp(n_big)
    real(8), intent(inout) :: bout(n_small)
    integer, intent(in) :: p_src(nnzP), p_dst(nnzP)
    real(8), intent(in) :: p_w(nnzP)

    ! -- Provided by Phoenix-generated commutator library (must be linked/USEd)
    interface
      subroutine commutate(ham, bin, bout)
        real(8), intent(in) :: ham(:)
        real(8), intent(in) :: bin(:)
        real(8), intent(inout) :: bout(:)
      end subroutine commutate
    end interface

    call commutate(ham, bin, tmp)
    call apply_projection_map_real(n_big, tmp, n_small, bout, nnzP, p_src, p_dst, p_w)
  end subroutine basis_step_real


  !> One basis-step for COMPLEX coefficients split as real/imag arrays.
  subroutine basis_step_cplx(n_big, ham_r, ham_i, bin_r, bin_i, tmp_r, tmp_i, n_small, bout_r, bout_i, nnzP, p_src, p_dst, p_w)
    integer, intent(in) :: n_big, n_small, nnzP
    real(8), intent(in) :: ham_r(n_big), ham_i(n_big)
    real(8), intent(in) :: bin_r(n_big), bin_i(n_big)
    real(8), intent(inout) :: tmp_r(n_big), tmp_i(n_big)
    real(8), intent(inout) :: bout_r(n_small), bout_i(n_small)
    integer, intent(in) :: p_src(nnzP), p_dst(nnzP)
    real(8), intent(in) :: p_w(nnzP)

    interface
      subroutine commutate_cplx(ham_r, ham_i, bin_r, bin_i, bout_r, bout_i)
        real(8), intent(in) :: ham_r(:), ham_i(:)
        real(8), intent(in) :: bin_r(:), bin_i(:)
        real(8), intent(inout) :: bout_r(:), bout_i(:)
      end subroutine commutate_cplx
    end interface

    call commutate_cplx(ham_r, ham_i, bin_r, bin_i, tmp_r, tmp_i)
    call apply_projection_map_cplx(n_big, tmp_r, tmp_i, n_small, bout_r, bout_i, nnzP, p_src, p_dst, p_w)
  end subroutine basis_step_cplx

end module adapt_heisenberg_step_mod
