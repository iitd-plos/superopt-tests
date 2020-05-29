#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags


g_eqflags["ex8.gcc"]=" --unroll-factor 4"
g_eqflags["ex1020.gcc"]=" --unroll-factor 4"
g_eqflags["ex108.gcc"]=" --unroll-factor 4"
g_eqflags["ex20.gcc"]=" --unroll-factor 4"
g_eqflags["ex27.gcc"]=" --unroll-factor 4"
g_eqflags["ex28.gcc"]=" --unroll-factor 4"

g_eqflags["ex1020_8.gcc"]=" --unroll-factor 8"
g_eqflags["ex20_8.gcc"]=" --unroll-factor 8"
g_eqflags["ex8_8.gcc"]=" --unroll-factor 8"

g_eqflags["ex108.clang"]=" --unroll-factor 8"
g_eqflags["ex25.clang"]=" --unroll-factor 8"
g_eqflags["ex27.clang"]=" --unroll-factor 8"
g_eqflags["ex28.clang"]=" --unroll-factor 8"


################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

> chaperon_commands
binary=corr_mutations

compiler=gcc     gen_commands_from_file_src_dst  gcc_hand       "--debug=eqcheck,correlate --global-timeout 18000 --smt-query-timeout 1800 "        "best"        >> chaperon_commands
compiler=clang   gen_commands_from_file_src_dst  clang_hand     "--debug=eqcheck,correlate --global-timeout 18000 --smt-query-timeout 1800 "        "best"        >> chaperon_commands

# compiler=gcc     gen_commands_from_file_src_dst  gcc_hand       "--debug=eqcheck,correlate --global-timeout 18000 --smt-query-timeout 1800 --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics "          "worst"        >> chaperon_commands
# compiler=clang   gen_commands_from_file_src_dst  clang_hand     "--debug=eqcheck,correlate --global-timeout 18000 --smt-query-timeout 1800 --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics "          "worst"        >> chaperon_commands

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
