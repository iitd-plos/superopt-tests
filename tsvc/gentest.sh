#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc.bc.eqchecker.O0.ll tsvc.clang.eqchecker.O3.i386
# TODO: pass a flag so that .etfg is not regenerated
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n tsvc.bc.eqchecker.O0.ll tsvc.gcc.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc_icc.bc.eqchecker.O0.ll tsvc_icc.icc.eqchecker.O3.i386
