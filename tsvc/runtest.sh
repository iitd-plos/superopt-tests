#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags
# the following need higher unroll-factor
g_eqflags["s121.clang"]="--unroll-factor 8"
g_eqflags["s131.clang"]="--unroll-factor 8"
g_eqflags["s132.clang"]="--unroll-factor 8"
g_eqflags["s2244.clang"]="--unroll-factor 8"
g_eqflags["s421.clang"]="--unroll-factor 8"
g_eqflags["s423.clang"]="--unroll-factor 8"

g_global_eqflags="--dyn_debug=stats"

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

binary=tsvc
> chaperon_commands
compiler=gcc   gen_commands_from_file gcc_tsvc_funcs_vec      "--unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                       >> chaperon_commands
compiler=gcc   gen_commands_from_file gcc_tsvc_funcs_nonvec   "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300"                       >> chaperon_commands
compiler=clang gen_commands_from_file clang_tsvc_funcs_vec    "--unroll-factor 8 --global-timeout 10000 --smt-query-timeout 300"                        >> chaperon_commands
compiler=clang gen_commands_from_file clang_tsvc_funcs_nonvec "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300"                       >> chaperon_commands

binary=tsvc_icc
compiler=icc   gen_commands_from_file icc_tsvc_funcs_vec      "--unroll-factor 4 --global-timeout 10000 --smt-query-timeout 300"                        >> chaperon_commands
compiler=icc   gen_commands_from_file icc_tsvc_funcs_nonvec   "--unroll-factor 2 --global-timeout 10000 --smt-query-timeout 300"                        >> chaperon_commands
compiler=icc   gen_commands_from_file icc_tsvc_funcs_reroll   "--unroll-factor 4 --dst-unroll-factor 5 --global-timeout 10000 --smt-query-timeout 300"  >> chaperon_commands

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-30}%" < chaperon_commands || true
