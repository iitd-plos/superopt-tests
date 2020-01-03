#!/bin/bash

set -eu # fail on error

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

    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"eqlogs/${binary}.${func}.${compiler}.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${func} ${eq_opts} ${binary}.bc.O0.s.ALL.etfg ${binary}.${compiler}.eqchecker.O3.i386.ALL.tfg\""
  done < ${infile}
}

mkdir -p eqlogs

binary=bzip2
compiler=clang
> chaperon_commands
gen_commands eq_funcs_spec2k_bzip2_ext_nv ""                   >> chaperon_commands
gen_commands eq_funcs_spec2k_bzip2_ext_v2 "--unroll-factor 4"  >> chaperon_commands
gen_commands eq_funcs_spec2k_bzip2_ext_v8 "--unroll-factor 16" >> chaperon_commands

parallel --load '100%' < chaperon_commands
