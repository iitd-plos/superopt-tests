#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A g_eqflags
g_global_eqflags="--global-timeout 3600" # are supposed to fail; 3600s should be enough to test soundness

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
> chaperon_commands
for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} >> chaperon_commands
done

parallel --load '100%' < chaperon_commands
