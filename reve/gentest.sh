#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n reve_src.bc.O0.s reve_dst.gcc.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n reve_src.bc.O0.s reve_dst.clang.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n reve_src.bc.O0.s reve_dst.icc.eqchecker.O3.i386
