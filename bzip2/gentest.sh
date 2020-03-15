#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n bzip2.${BC_O0_SUFFIX} bzip2.${CLANG_O3_SUFFIX}
#python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n bzip2_minimal_changes.${BC_O0_SUFFIX} bzip2_minimal_changes.${CLANG_O3_SUFFIX}
