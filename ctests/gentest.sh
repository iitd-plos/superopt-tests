#!/bin/bash

set -eu # fail on error

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_gentest.sh

for f in ${PROGS}
do
  gen_for_all ${f}
done
