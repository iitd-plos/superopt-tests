#!/bin/bash

set -eu # fail on error

################################

declare -A g_eqflags
g_eqflags["corr_mutations.ex2"]="--unroll-factor 8"
g_eqflags["corr_mutations.ex3"]="--unroll-factor 8"
g_eqflags["corr_mutations.ex4"]="--unroll-factor 8"
g_eqflags["corr_mutations.ex5"]="--unroll-factor 8"
g_eqflags["corr_mutations.foo"]="--unroll-factor 2"


################################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

> chaperon_commands

for f in ${PROGS_PREFIX}
do
  g_global_eqflags="--disable_residual_loop_unroll --debug=eqcheck,correlate --global-timeout 10000 --smt-query-timeout 300"
  gen_for_src_dst ${f} "best" >> chaperon_commands
  
  g_global_eqflags="--disable_residual_loop_unroll --debug=eqcheck,correlate --global-timeout 10000 --smt-query-timeout 300 --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning"
  gen_for_src_dst ${f} "no_rank_prop" >> chaperon_commands

  g_global_eqflags="--disable_residual_loop_unroll --debug=eqcheck,correlate --global-timeout 10000 --smt-query-timeout 300 --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning --disable_all_static_heuristics"
  gen_for_src_dst ${f} "worst" >> chaperon_commands

#   g_eqflags["corr_mutations"]="--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning  --disable_all_static_heuristics --choose_shortest_path_first"
#   gen_for_src_dst ${f} "worst_shortest" >> chaperon_commands
# 
#   g_eqflags["corr_mutations"]="--disable_residual_loop_unroll --debug=eqcheck,correlate --disable_dst_bv_rank --disable_src_bv_rank --disable_propagation_based_pruning  --disable_all_static_heuristics --choose_longest_delta_first"
#   gen_for_src_dst ${f} "worst_longest" >> chaperon_commands

done
#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
