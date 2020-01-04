#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n bzip2.bc.O0.s bzip2.clang.eqchecker.O3.i386
