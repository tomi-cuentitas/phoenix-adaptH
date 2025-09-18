program omp_teams_demo
  use omp_lib
  implicit none
  integer :: team, nteams, tid, nthreads

  !$omp teams num_teams(3) thread_limit(4)
    !$omp parallel private(team,nteams,tid,nthreads)
      team     = omp_get_team_num()
      nteams   = omp_get_num_teams()
      tid      = omp_get_thread_num()
      nthreads = omp_get_num_threads()

      print '(A,I2,A,I2,A,I2,A,I2)', "Hello from team ", team, "/", nteams-1, &
                                     " thread ", tid, "/", nthreads-1
    !$omp end parallel
  !$omp end teams

end program omp_teams_demo