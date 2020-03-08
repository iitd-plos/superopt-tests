#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest_from_file.sh

binary=tsvc
> chaperon_commands
compiler=gcc   gen_commands gcc_tsvc_funcs_vec      "--unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 16"                        >> chaperon_commands
compiler=gcc   gen_commands gcc_tsvc_funcs_nonvec   "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 4"                         >> chaperon_commands
compiler=clang gen_commands clang_tsvc_funcs_vec    "--unroll-factor 16 --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 16"                        >> chaperon_commands
compiler=clang gen_commands clang_tsvc_funcs_nonvec "--unroll-factor 2  --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 4"                         >> chaperon_commands

binary=tsvc_icc
compiler=icc   gen_commands icc_tsvc_funcs_vec      "--unroll-factor 8 --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 16"                        >> chaperon_commands
compiler=icc   gen_commands icc_tsvc_funcs_nonvec   "--unroll-factor 2 --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 4"                         >> chaperon_commands 
compiler=icc   gen_commands icc_tsvc_funcs_reroll   "--unroll-factor 8 --dst-unroll-factor 5 --global-timeout 10000 --smt-query-timeout 300 --max_lookahead 16"  >> chaperon_commands

parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
