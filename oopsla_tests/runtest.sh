#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
# 5 min smt-timeout, 5 hour global timeout
g_global_eqflags="--global-timeout 18000 --smt-query-timeout 300 --dyn_debug=eqcheck,correlate --disable_residual_loop_unroll"
##************* BEST ***************##
> chaperon_commands

##************* VEC ***************##

binary=oopsla_tests
compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec           " --unroll-factor 4"                                             "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_oopsla_funcs_vec         " --unroll-factor 8"                                             "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_oopsla_funcs_vec_nolpr   " --disable_loop_path_exprs --unroll-factor 8"                   "best"    >> chaperon_commands
binary=oopsla_tests_8uf
compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec_uf8       " --unroll-factor 8"                                             "best"    >> chaperon_commands
compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec_uf8_nolpr " --disable_loop_path_exprs --unroll-factor 8"                   "best"    >> chaperon_commands
binary=oopsla_tests_icc
compiler=icc    gen_commands_from_file  icc_oopsla_funcs_vec           " --unroll-factor 4"                                             "best"    >> chaperon_commands


##************* WORST ***************##
 
 g_global_eqflags="--global-timeout 18000 --smt-query-timeout 300 --dyn_debug=eqcheck,correlate --disable_residual_loop_unroll --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics"
 binary=oopsla_tests
 compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec           " --unroll-factor 4"                                           "worst"   >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_oopsla_funcs_vec         " --unroll-factor 8"                                           "worst"   >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_oopsla_funcs_vec_nolpr   " --disable_loop_path_exprs --unroll-factor 8"                 "worst"   >> chaperon_commands
 binary=oopsla_tests_8uf
 compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec_uf8       " --unroll-factor 8"                                           "worst"   >> chaperon_commands
 compiler=gcc    gen_commands_from_file  gcc_oopsla_funcs_vec_uf8_nolpr " --disable_loop_path_exprs --unroll-factor 8"                 "worst"   >> chaperon_commands
 binary=oopsla_tests_icc
 compiler=icc    gen_commands_from_file  icc_oopsla_funcs_vec           " --unroll-factor 4"                                           "worst"   >> chaperon_commands
# 
# 
# #parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
