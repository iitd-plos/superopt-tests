#!/bin/bash

CORES=$(nproc)
CORES=$((CORES/3))

# XXX change this!
export SUPEROPT_PROJECT_ROOT=${HOME/thesis/superopt-project

./parallel-tsvc.sh -c $CORES -O' -o "O3" -c "gcc"   -P" --unroll-factor 7  --global-timeout 30000 --smt-query-timeout 300 --initial_lookahead 6 "' eq_funcs_tsvc
./parallel-tsvc.sh -c $CORES -O' -o "O3" -c "icc"     -P" --unroll-factor 7  --global-timeout 30000 --smt-query-timeout 300 --initial_lookahead 6 "' eq_funcs_tsvc
./parallel-tsvc.sh -c $CORES -O' -o "O3" -c "clang" -P" --unroll-factor 15 --global-timeout 50000 --smt-query-timeout 300 --initial_lookahead 6 "' eq_funcs_tsvc
