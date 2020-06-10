#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

# generate .etfg and .tfg files
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${PWD}/bzip2_minimal_changes.${BC_O0_SUFFIX} ${PWD}/bzip2_minimal_changes.${CLANG_O3_SUFFIX}" > gentest_chaperon_commands

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-33}%" < gentest_chaperon_commands || true
