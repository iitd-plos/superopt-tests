#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest_from_file.sh

binary=oopsla_tests
> chaperon_commands
compiler=gcc   gen_commands oopsla_funcs_vec      "--unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
compiler=gcc   gen_commands oopsla_funcs_vec      "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank"      >> chaperon_commands
compiler=gcc   gen_commands oopsla_funcs_vec      "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands

compiler=clang   gen_commands oopsla_funcs_vec    "--unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
compiler=clang   gen_commands oopsla_funcs_vec    "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank"      >> chaperon_commands
compiler=clang   gen_commands oopsla_funcs_vec    "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands

compiler=icc   gen_commands oopsla_funcs_vec      "--unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
compiler=icc   gen_commands oopsla_funcs_vec      "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank"      >> chaperon_commands
compiler=icc   gen_commands oopsla_funcs_vec      "--disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
