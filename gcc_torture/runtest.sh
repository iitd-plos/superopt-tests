#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
g_global_eqflags="--global-timeout 7200 --smt-query-timeout 1800" # should be enough for most

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

> chaperon_commands
for f in ${PROGS}
do
  gen_for_llc ${f} >> chaperon_commands
done

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
