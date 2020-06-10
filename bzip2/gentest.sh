#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

# generate .etfg and .tfg files 
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${PWD}/bzip2.${BC_O0_SUFFIX} ${PWD}/bzip2.${CLANG_O3_SUFFIX}" > gentest_chaperon_commands

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-30}%" < gentest_chaperon_commands || true
