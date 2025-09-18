program nested_omp
  use omp_lib
  implicit none

  integer :: tid, outer_threads, inner_threads

  call omp_set_max_active_levels(2)

  !$omp parallel private(tid)
    tid = omp_get_thread_num()
    outer_threads = omp_get_num_threads()
    print *, "Outer thread:", tid, " of ", outer_threads

    !$omp parallel private(inner_threads)
      inner_threads = omp_get_thread_num()
      print *, "  Inner thread:", inner_threads, " within outer thread:", tid
    !$omp end parallel

  !$omp end parallel

end program nested_omp