#!/bin/bash

set -eu # fail on error

EQLOGS=${EQLOGS_DIR:-${PWD}/eqlogs}
EQLOGS=$(realpath ${EQLOGS})
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
    eqflags_comp=${g_eqflags[${func}.${compiler}]:-${eqflags}}
    final_eq_opts="${eq_opts} ${g_global_eqflags:-} ${eqflags_comp}"

    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${binary}.${func}.${compiler}.${O3_SUFFIX}${EQLOG_SUFFIX:-}.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${func} --proof ${PWD}/${binary}.${func}.${compiler}.${O3_SUFFIX}.proof ${final_eq_opts} ${PWD}/${binary}.${BC_O0_SUFFIX}.ALL.etfg ${PWD}/${binary}.${compiler}.${O3_SUFFIX}.ALL.tfg\""
  done < ${infile}
}
