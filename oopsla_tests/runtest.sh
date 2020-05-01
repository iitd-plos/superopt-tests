#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags
g_global_eqflags="--global-timeout 10000 --smt-query-timeout 300"

################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

binary=oopsla_tests
> chaperon_commands
compiler=gcc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
compiler=gcc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank_prop"      >> chaperon_commands
compiler=gcc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands
# compiler=gcc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --choose_shortest_path_first --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst_shortest"        >> chaperon_commands
# compiler=gcc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --choose_longest_delta_first --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst_longest"        >> chaperon_commands

compiler=clang   gen_commands_from_file clang_oopsla_funcs_vec    "--disable_residual_loop_unroll --debug=eqcheck,correlate --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
compiler=clang   gen_commands_from_file clang_oopsla_funcs_vec    "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank_prop"      >> chaperon_commands
compiler=clang   gen_commands_from_file clang_oopsla_funcs_vec    "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands
# compiler=clang   gen_commands_from_file clang_oopsla_funcs_vec    "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --choose_shortest_path_first --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"    "worst_shortest"        >> chaperon_commands
# compiler=clang   gen_commands_from_file clang_oopsla_funcs_vec    "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --choose_longest_delta_first --unroll-factor 8  --global-timeout 10000 --smt-query-timeout 300"    "worst_longest"        >> chaperon_commands

# compiler=icc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                                                                                                     "best"        >> chaperon_commands
# compiler=icc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"                                    "no_rank_prop"      >> chaperon_commands
# compiler=icc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst"        >> chaperon_commands
# compiler=icc   gen_commands_from_file oopsla_funcs_vec      "--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics --choose_shortest_path_first --unroll-factor 4  --global-timeout 10000 --smt-query-timeout 300"    "worst_shortest"        >> chaperon_commands

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
