#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
#g_eqflags["barthe"]=""
g_eqflags["loop_unswitching.loop_unswitching"]="--unroll-factor 1"
#g_eqflags["vla.foo_vla.clang"]="--local_sprel_assumes vla.foo_vla.clang.lsprel_mapping"
#g_eqflags["vla.foo_vla.gcc"]="--local_sprel_assumes vla.foo_vla.gcc.lsprel_mapping"
g_eqflags["vla.foo_vla.icc"]="--local_sprel_assumes vla.foo_vla.icc.lsprel_mapping" # DWARF data is imprecise
g_eqflags["minprintf.minprintf"]="--smy-query-timeout 600" # DWARF data is imprecise

#g_global_eqflags="--global-timeout 120" # as the testcases are "micro"
g_global_eqflags="--dyn_debug=stats"

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

if [[ -n ${PARALLEL_JOBS-} ]]
then
  PARALLEL_OPTS="-j ${PARALLEL_JOBS}"
elif [[ ! -z ${PARALLEL_LOAD_PERCENT+Z} ]]
then
  PARALLEL_OPTS="--load ${PARALLEL_LOAD_PERCENT:-30}%"
fi
[[ $# -eq 0 ]] && parallel ${PARALLEL_OPTS:-} < chaperon_commands || true
