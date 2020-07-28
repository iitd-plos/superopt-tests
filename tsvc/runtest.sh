#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
# 5 min smt-timeout, 5 hour global timeout
g_global_eqflags="--global-timeout 18000 --smt-query-timeout 300 --dyn_debug=eqcheck,correlate"
##************* BEST ***************##
> chaperon_commands

##************* SEMALIGN NONVEC***************##
binary=tsvc
compiler=gcc    gen_commands_from_file  gcc_tsvc_funcs_nonvec_semalign    " --unroll-factor 2"   "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_tsvc_funcs_nonvec_semalign  " --unroll-factor 2"   "best"    >> chaperon_commands
binary=tsvc_icc
compiler=icc    gen_commands_from_file  icc_tsvc_funcs_nonvec_semalign    " --unroll-factor 2"   "best"    >> chaperon_commands

##************* VEC ***************##

binary=tsvc
compiler=gcc    gen_commands_from_file  gcc_tsvc_funcs_vec             " --unroll-factor 4"                                                              "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec           " --unroll-factor 8"                                                              "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec_nolu      " --disable_residual_loop_unroll --unroll-factor 8"                               "best"    >> chaperon_commands
compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec_nolulpr   " --disable_residual_loop_unroll --disable_loop_path_exprs --unroll-factor 8"     "best"    >> chaperon_commands
binary=tsvc_icc
compiler=icc    gen_commands_from_file  icc_tsvc_funcs_vec             " --unroll-factor 4"                                                              "best"    >> chaperon_commands
compiler=icc    gen_commands_from_file  icc_tsvc_funcs_vec_nolulpr     " --disable_residual_loop_unroll --disable_loop_path_exprs --unroll-factor 4"     "best"    >> chaperon_commands



##************* WORST ***************##
 g_global_eqflags="--global-timeout 18000 --smt-query-timeout 300 --dyn_debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics "
 
 ##************* SEMALIGN NONVEC***************##
 binary=tsvc
 compiler=gcc    gen_commands_from_file  gcc_tsvc_funcs_nonvec_semalign    " --unroll-factor 2"   "worst"    >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_tsvc_funcs_nonvec_semalign  " --unroll-factor 2"   "worst"    >> chaperon_commands
 binary=tsvc_icc
 compiler=icc    gen_commands_from_file  icc_tsvc_funcs_nonvec_semalign    " --unroll-factor 2"   "worst"    >> chaperon_commands
 
 ##************* VEC ***************##
 
 binary=tsvc
 compiler=gcc    gen_commands_from_file  gcc_tsvc_funcs_vec             " --unroll-factor 4"                                                              "worst"    >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec           " --unroll-factor 8"                                                              "worst"    >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec_nolu      " --disable_residual_loop_unroll --unroll-factor 8"                               "worst"    >> chaperon_commands
 compiler=clang  gen_commands_from_file  clang_tsvc_funcs_vec_nolulpr   " --disable_residual_loop_unroll --disable_loop_path_exprs --unroll-factor 8"     "worst"    >> chaperon_commands
 binary=tsvc_icc
 compiler=icc    gen_commands_from_file  icc_tsvc_funcs_vec             " --unroll-factor 4"                                                              "worst"    >> chaperon_commands
 compiler=icc    gen_commands_from_file  icc_tsvc_funcs_vec_nolulpr     " --disable_residual_loop_unroll --disable_loop_path_exprs --unroll-factor 4"     "worst"    >> chaperon_commands

###################### EXTRA NONVEC ################################

# compiler=gcc   gen_commands_from_file gcc_tsvc_funcs_nonvec   "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300"                         >> chaperon_commands
# compiler=clang gen_commands_from_file clang_tsvc_funcs_nonvec "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300"                         >> chaperon_commands
# binary=tsvc_icc
# compiler=icc   gen_commands_from_file icc_tsvc_funcs_nonvec   "--unroll-factor 2 --global-timeout 10000 --smt-query-timeout 300"                          >> chaperon_commands

# Re-rolling not supported
# compiler=icc  gen_commands_from_file icc_tsvc_funcs_reroll    "--unroll-factor 4 --dst-unroll-factor 5  --global-timeout 18000 --smt-query-timeout 1800"  >> chaperon_commands

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-30}%" < chaperon_commands || true
