#!/bin/bash

set -eu # fail on error

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

gen_for_src_dst()
{
  infile_pfx="$1"
  eqflags=${g_eqflags[$infile_pfx]:-}
  eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${infile_pfx}_src.${BC_O0_SUFFIX}.ALL.etfg ${infile_pfx}_dst.${CLANG_O3_SUFFIX}.ALL.tfg\""
  eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${infile_pfx}_src.${BC_O0_SUFFIX}.ALL.etfg ${infile_pfx}_dst.${GCC_O3_SUFFIX}.ALL.tfg\""
  eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${infile_pfx}_src.${BC_O0_SUFFIX}.ALL.etfg ${infile_pfx}_dst.${ICC_O3_SUFFIX}.ALL.tfg\""
}

get_funcs()
{
  grep '=FunctionName:' "${file_pfx}$.{BC_O0_SUFFIX}.ALL.etfg" | grep -v 'MYmy' | cut -f2 -d' '
}

gen_for_all()
{
  file_pfx="$1"
  for fn in $(get_funcs "${file_pfx}");
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_eqflags[$infile_pfx]:-}
    eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg ${file_pfx}.${CLANG_O3_SUFFIX}.ALL.tfg\""
    eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg ${file_pfx}.${GCC_O3_SUFFIX}.ALL.tfg\""
    eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${file_pfx}.${BC_O0_SUFFIX}.ALL.etfg ${file_pfx}.${ICC_O3_SUFFIX}.ALL.tfg\""
  done
}
