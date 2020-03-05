#!/bin/bash

set -eu # fail on error

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll
O3_SUFFIX=${GCC_O3_SUFFIX#gcc.}

gen_commands()
{
  infile="$1"
  eq_opts="$2"

  while read line;
  do
    [[ "${line}" == "" ]] && continue
    [[ "${line}" == '#'* ]] && continue
    arr=(${line})
    func=${arr[0]} # take out the first space separated word
    eqflags=${g_eqflags[$func]:-}
    eq_opts="${eq_opts} ${eqflags}"

    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${binary}.${func}.${compiler}.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${func} ${eq_opts} ${binary}.${BC_O0_SUFFIX}.ALL.etfg ${binary}.${compiler}.${O3_SUFFIX}.ALL.tfg\""
  done < ${infile}
}
