#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A fn_eqflags
fn_eqflags["propagate"]="--max_lookahead 2"
fn_eqflags["digit10"]="--max_lookahead 8 --unroll-factor 8"
#fn_eqflags["memmove.clang"]="--unroll-factor 8 --max_lookahead 8" # need disjunctive inequality predicates
#fn_eqflags["memset.clang"]="--max_lookahead 16 --unroll-factor 16" # clang generates unsupported opcode `pshufb`
fn_eqflags["findmax.clang"]="--global-timeout 60" # clang generates vectorized max opcode; fail early

fn_eqflags["memccpy_fail"]="--global-timeout 3600" # is supposed to fail; 3600s should be enough to test soundness
fn_eqflags["memchr_fail"]="--global-timeout 3600"  # is supposed to fail; 3600s should be enough to test soundness

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh
> chaperon_commands
for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f} > chaperon_commands
done

parallel --load '100%' < chaperon_commands
