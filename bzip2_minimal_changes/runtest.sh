#!/bin/bash

set -eu # fail on error

###########################

declare -A g_eqflags
g_eqflags["qSort3"]="--smt-query-timeout 600" # timeouts otherwise
#g_eqflags["loadAndRLEsource"]="--unroll-factor 16" # higher unroll-factor required on exit path
#g_eqflags["getAndMoveToFrontDecode"]="--unroll-factor 16" # higher unroll-factor required on exit path

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest_from_file.sh

binary=bzip2_minimal_changes
compiler=clang
> chaperon_commands

gen_commands eq_funcs_spec2k_bzip2_ext_nv ""                   >> chaperon_commands
gen_commands eq_funcs_spec2k_bzip2_ext_v2 "--unroll-factor 4"  >> chaperon_commands
gen_commands eq_funcs_spec2k_bzip2_ext_v8 "--unroll-factor 16" >> chaperon_commands

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
