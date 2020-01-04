#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n  semalign_ex_src.bc.O0.s semalign_ex_dst.gcc.eqchecker.O3.i386
# passing -noclobber so that .etfg is not regenerated
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n --noclobber semalign_ex_src.bc.O0.s semalign_ex_dst.clang.eqchecker.O3.i386
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n --noclobber semalign_ex_src.bc.O0.s semalign_ex_dst.icc.eqchecker.O3.i386
	
