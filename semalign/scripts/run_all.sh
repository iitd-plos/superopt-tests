#!/bin/bash

CORES=$(nproc)
CORES=$((CORES/3))

# XXX change this!
export SUPEROPT_PROJECT_ROOT=${SUPEROPT_ROOT}

./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "gcc" -P" --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4"' semalign_examples
./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "clang" -P" --unroll-factor 16 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4"' semalign_examples
./parallel-tsvc.sh -c ${CORES} -O '-o "O3" -c "icc" -P" --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4"' semalign_examples

