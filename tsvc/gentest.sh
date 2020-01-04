#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc.bc.O0.s tsvc.clang.eqchecker.O3.i386
# TODO: pass a flag so that .etfg is not regenerated
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n tsvc.bc.O0.s tsvc.gcc.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  tsvc_icc.bc.O0.s tsvc_icc.icc.eqchecker.O3.i386
