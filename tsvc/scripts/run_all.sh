#!/bin/bash

CORES=$(nproc)
CORES=$((CORES/4))

# XXX change this!
export SUPEROPT_PROJECT_ROOT=${SUPEROPT_ROOT}

./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "gcc" -P" --unroll-factor 8 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 16"' gcc_tsvc_funcs_vec
./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "gcc" -P" --unroll-factor 2 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 4"' gcc_tsvc_funcs_nonvec

./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "clang" -P" --unroll-factor 16 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 16"' clang_tsvc_funcs_vec
./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "clang" -P" --unroll-factor 2 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 4"' clang_tsvc_funcs_nonvec

./parallel-tsvc.sh -c ${CORES} -O '-o "O2" -c "icc" -P" --unroll-factor 8 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 16"' icc_tsvc_funcs_vec
./parallel-tsvc.sh -c ${CORES} -O '-o "O2" -c "icc" -P" --unroll-factor 2 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 4"' icc_tsvc_funcs_nonvec
./parallel-tsvc.sh -c ${CORES} -O '-o "O2" -c "icc" -P" --unroll-factor 8 --dst-unroll-factor 5 --global-timeout 30000 --smt-query-timeout 300 --max_lookahead 16"' icc_tsvc_funcs_reroll

