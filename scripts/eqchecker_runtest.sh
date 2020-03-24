#!/bin/bash

set -eu # fail on error

EQLOGS=${EQLOGS_DIR:-${PWD}/eqlogs}
EQLOGS=$(realpath ${EQLOGS}) # get absolute path
mkdir -p ${EQLOGS}

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll
O3_SUFFIX=${GCC_O3_SUFFIX#gcc.}

get_funcs_except_main_and_MYmy()
{
  file=$1
  grep '=FunctionName:' "${file}" | grep -v -e 'MYmy' -e 'main$' | cut -f2 -d' '
}

gen_for_src_dst()
{
  file_pfx="$1"
  for fn in $(get_funcs_except_main_and_MYmy "${file_pfx}_src.${BC_O0_SUFFIX}.ALL.etfg");
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
  for fn in $(get_funcs_except_main_and_MYmy "${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg");
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

gen_for_ll_as()
{
  file_pfx="$1"
  for fn in $(get_funcs_except_main_and_MYmy "${file_pfx}.ll.${BC_O0_SUFFIX}.ALL.etfg");
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_global_eqflags:-}
    eqflags="${eqflags} ${g_eqflags[$infile_pfx]:-}"
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.O0.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags} --proof ${infile_pfx}.proof ${file_pfx}.ll.${BC_O0_SUFFIX}.ALL.etfg ${file_pfx}.as.${O0_SUFFIX}.ALL.tfg\""
  done
}
