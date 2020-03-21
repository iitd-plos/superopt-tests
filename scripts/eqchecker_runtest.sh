#!/bin/bash

set -eu # fail on error

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll
O3_SUFFIX=${GCC_O3_SUFFIX#gcc.}

get_funcs_except_main_and_MYmy()
{
  file_pfx=$1
  grep '=FunctionName:' "${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg" | grep -v -e 'MYmy' -e 'main$' | cut -f2 -d' '
}

gen_for_src_dst()
{
  file_pfx="$1"
  for fn in $(get_funcs_except_main_and_MYmy "${file_pfx}_src");
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_global_eqflags:-}
    eqflags="${eqflags} ${g_eqflags[$infile_pfx]:-}"
    for compiler in clang gcc icc; do
      eqflags_comp=${g_eqflags[${infile_pfx}.${compiler}]:-${eqflags}}
      echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.${compiler}.${O3_SUFFIX}.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_comp} --proof ${PWD}/${infile_pfx}.${compiler}.proof ${PWD}/${file_pfx}_src.${BC_O0_SUFFIX}.ALL.etfg ${PWD}/${file_pfx}_dst.${compiler}.${O3_SUFFIX}.ALL.tfg\""
    done
  done
}

gen_for_all()
{
  file_pfx="$1"
  for fn in $(get_funcs_except_main_and_MYmy "${file_pfx}");
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_global_eqflags:-}
    eqflags="${eqflags} ${g_eqflags[$infile_pfx]:-}"
    for compiler in clang gcc icc; do
      eqflags_comp=${g_eqflags[${infile_pfx}.${compiler}]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.${compiler}.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_comp} --proof ${PWD}/${infile_pfx}.${compiler}.proof ${PWD}/${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg ${PWD}/${file_pfx}.${compiler}.${O3_SUFFIX}.ALL.tfg\""
    done
  done
}
