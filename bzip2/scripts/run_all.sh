#!/bin/bash

CORES=$(nproc)
CORES=$((CORES/3))

# XXX change this!
export SUPEROPT_PROJECT_ROOT=${HOME}/thesis/superopt-project

./parallel-bzip2.sh -c ${CORES} -O'-c clang -P"--unroll-factor 4"'  eq_funcs_spec2k_bzip2_ext_v2
./parallel-bzip2.sh -c ${CORES} -O'-c clang -P"--unroll-factor 16"' eq_funcs_spec2k_bzip2_ext_v8
./parallel-bzip2.sh -c ${CORES} -O'-c clang' eq_funcs_spec2k_bzip2_ext_nv
