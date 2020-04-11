#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A g_eqflags
g_eqflags["bitflip.bitflip"]="--unroll-factor 4"
g_eqflags["strlen.strlen"]="--unroll-factor 8"
g_eqflags["strchrnul.strchrnul"]="--unroll-factor 8"

g_global_eqflags="--global-timeout 3600 --smt-query-timeout 300"

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
> chaperon_commands

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} >> chaperon_commands
done

###########################

# expected memory safety check failure on page_size < 4
g_eqflags["strlen.strlen"]="--unroll-factor 8 --page_size 2"
EQLOG_SUFFIX=".safety_fail"

gen_for_src_dst "strlen" >> chaperon_commands

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
