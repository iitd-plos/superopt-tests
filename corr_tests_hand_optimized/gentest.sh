#!/bin/bash

set -eu # fail on error

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_gentest.sh

> gentest_chaperon_commands

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} >> gentest_chaperon_commands
done
