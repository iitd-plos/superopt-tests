#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n semalign_ex_src.bc.eqchecker.O0.ll semalign_ex_dst.gcc.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n semalign_ex_src.bc.eqchecker.O0.ll semalign_ex_dst.clang.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n semalign_ex_src.bc.eqchecker.O0.ll semalign_ex_dst.icc.eqchecker.O3.i386
	
