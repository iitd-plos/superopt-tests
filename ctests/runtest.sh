#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
g_eqflags["chomp.get_good_move.icc"]="--unroll-factor 2"
g_eqflags["chomp.make_data.clang"]="--unroll-factor 8"
g_eqflags["chomp.make_data.gcc"]="--unroll-factor 2"
#g_eqflags["chomp.copy_data.clang"]="--unroll-factor 8" # need disjunctive inequality predicates
#g_eqflags["chomp.melt_data.clang"]="--unroll-factor 8" # need disjunctive inequality predicates
#g_eqflags["chomp.melt_data_simple.clang"]="--unroll-factor 8" # need disjunctive inequality predicates
g_eqflags["chomp.get_real_move.clang"]="--anchor_loop_tail" # _unpeeling_ by clang
g_eqflags["chomp.melt_data.icc"]="--consider_non_vars_for_dst_ineq" # branch condition involves stack element
#g_eqflags["fannkuch.copy_perm.clang"]="--unroll-factor 8" # need disjunctive inequality predicates
g_eqflags["fannkuch.fannkuch.clang"]="--unroll-factor 8" # takes too much time
g_eqflags["fannkuch.init_perm1.clang"]="--unroll-factor 4" # reads from RODATA
g_eqflags["knucleotide.hash_table_size.icc"]="--unroll-factor 4" # loop peeled 4 times by compiler
g_eqflags["knucleotide.main"]="--unroll-factor 2"
g_eqflags["sha1.do_bench.clang"]="--unroll-factor 8" # reads from RODATA

g_global_eqflags="--global-timeout 7200" # should be enough for most

###########################

source ${SUPEROPT_PROJECT_DIR}/superopt-tests/scripts/eqchecker_runtest.sh

> chaperon_commands
for f in ${PROGS}
do
  gen_for_all ${f} >> chaperon_commands
done

#parallel --load "${PARALLEL_LOAD_PERCENT:-100}%" < chaperon_commands
