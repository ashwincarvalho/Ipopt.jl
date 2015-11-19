using Ipopt
using Base.Test

include("hs071_test.jl")

getProblemStats(prob)
returnProblemStats(prob)

@test prob.num_iters == 8
@test prob.stats.num_iters == 8
@test_approx_eq_eps prob.stats.obj_val 17.014017145179164 1e-5
@test prob.total_cpu_time == prob.stats.total_cpu_time
@test prob.total_sys_time == prob.stats.total_sys_time
@test prob.total_wallclock_time == prob.total_wallclock_time

include("hs071_test.jl")
getProblemStats(prob)
returnProblemInfoStats(prob)

@test prob.num_iters == 8
@test prob.stats.num_iters == 8
@test_approx_eq_eps prob.stats.obj_val 17.014017145179164 1e-5
@test prob.total_cpu_time == prob.stats.total_cpu_time
@test prob.total_sys_time == prob.stats.total_sys_time
@test prob.total_wallclock_time == prob.total_wallclock_time
