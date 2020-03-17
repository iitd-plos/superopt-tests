#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc.${BC_O0_SUFFIX} tsvc.${CLANG_O3_SUFFIX}
# TODO: pass a flag so that .etfg is not regenerated
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n tsvc.${BC_O0_SUFFIX} tsvc.${GCC_O3_SUFFIX}
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc_icc.${BC_O0_SUFFIX} tsvc_icc.${ICC_O3_SUFFIX}
