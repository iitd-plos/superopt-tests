#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A g_eqflags
g_common_eqflags="--global-timeout 120" # as the testcases are "micro"
#g_eqflags["barthe"]=""
g_eqflags["loop_unswitching"]="--unroll-factor 1"

###########################

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

gen_for_src_dst()
{
  infile_pfx="$1"
  eqflags="${g_common_eqflags} ${g_eqflags[$infile_pfx]:-}"
  eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
  eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
  eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
}

get_funcs()
{
  grep '=FunctionName:' ${file_pfx}.bc.O0.s.ALL.etfg | grep -v 'MYmy' | cut -f2 -d' '
}

gen_for_all()
{
  file_pfx="$1"
  for fn in $(get_funcs ${file_pfx});
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_eqflags[$infile_pfx]:-}
    eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
    eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
    eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
  done
}

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f}
done

for f in ${PROGS}
do
  gen_for_all ${f}
done

parallel --load '100%' < chaperon_commands
