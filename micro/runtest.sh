#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
#g_eqflags["barthe"]=""
g_eqflags["loop_unswitching.loop_unswitching"]="--unroll-factor 1"

g_global_eqflags="--global-timeout 120" # as the testcases are "micro"

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

> chaperon_commands
for f in ${PROGS}
do
  gen_for_all ${f} >> chaperon_commands
done
for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} >> chaperon_commands
done

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
