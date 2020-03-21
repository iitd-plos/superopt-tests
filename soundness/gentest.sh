#!/bin/bash

set -eu # fail on error

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_gentest.sh

for f in ${PROGS:-}
do
  gen_for_all ${f}
done

for f in ${PROGS_PREFIX:-}
do
  gen_for_src_dst ${f}
done

for f in ${LL_ASM_PROGS:-}
do
  gen_for_ll_as ${f}
done
