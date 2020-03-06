#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A g_eqflags
g_eqflags["propagate.propagate"]="--max_lookahead 2"
g_eqflags["digit10.digit10"]="--max_lookahead 8 --unroll-factor 8"
#g_eqflags["memmove.memmove.clang"]="--unroll-factor 8 --max_lookahead 8" # need disjunctive inequality predicates
#g_eqflags["memset.memset.clang"]="--max_lookahead 16 --unroll-factor 16" # clang generates unsupported opcode `pshufb`
g_eqflags["findmax.findmax.clang"]="--global-timeout 60" # clang generates vectorized max opcode; fail early

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
> chaperon_commands
for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} >> chaperon_commands
done

parallel --load '100%' < chaperon_commands
