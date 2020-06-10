#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
#g_eqflags["barthe"]=""
g_eqflags["loop_unswitching.loop_unswitching"]="--unroll-factor 1"
g_eqflags["vla.foo_vla.clang"]="--local_sprel_assumes vla.foo_vla.clang.lsprel_mapping"
g_eqflags["vla.foo_vla.gcc"]="--local_sprel_assumes vla.foo_vla.gcc.lsprel_mapping"
g_eqflags["vla.foo_vla.icc"]="--local_sprel_assumes vla.foo_vla.icc.lsprel_mapping"

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

[[ $# -eq 0 ]] && parallel --load "${PARALLEL_LOAD_PERCENT:-30}%" < chaperon_commands || true
