#!/bin/bash

set -eu # fail on error

###########################

declare -A g_eqflags
g_eqflags["loadAndRLEsource"]="--smt-query-timeout 600" # timeouts otherwise
## Simiilar performance even with bv ranking enabled
#g_eqflags["qSort3"]="--smt-query-timeout 600 --disable_dst_bv_rank --disable_src_bv_rank" # timeouts otherwise
#g_eqflags["recvDecodingTables"]="--disable_dst_bv_rank --disable_src_bv_rank" # timeouts otherwise
#g_eqflags["hbCreateDecodeTables"]="--disable_dst_bv_rank --disable_src_bv_rank" # timeouts otherwise
g_eqflags["computeMTFforSelectors"]="--disable_dst_bv_rank --disable_src_bv_rank" # timeouts otherwise

g_global_eqflags=" --global-timeout 7200 --dyn_debug=stats"  # everything above this should be terminated anyway

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

binary=bzip2
compiler=clang
> chaperon_commands

gen_commands_from_file eq_funcs_spec2k_bzip2_ext_nv  ""                   >> chaperon_commands
gen_commands_from_file eq_funcs_spec2k_bzip2_ext_v2  "--unroll-factor 2"  >> chaperon_commands
gen_commands_from_file eq_funcs_spec2k_bzip2_ext_v8  "--unroll-factor 8"  >> chaperon_commands
gen_commands_from_file eq_funcs_spec2k_bzip2_ext_v16 "--unroll-factor 16" >> chaperon_commands

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-30}%" < chaperon_commands || true
