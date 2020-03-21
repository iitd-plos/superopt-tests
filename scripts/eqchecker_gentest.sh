#!/bin/bash

set -eu # fail on error

# HACK: use .ll version
BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

# generate .etfg and .tfg files 
gen_for_src_dst()
{
  infile_pfx="$1"
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.${BC_O0_SUFFIX} ${infile_pfx}_dst.${GCC_O3_SUFFIX}
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.${BC_O0_SUFFIX} ${infile_pfx}_dst.${CLANG_O3_SUFFIX}
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.${BC_O0_SUFFIX} ${infile_pfx}_dst.${ICC_O3_SUFFIX}
}

gen_for_all()
{
  file_pfx="$1"
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.${BC_O0_SUFFIX} ${file_pfx}.${GCC_O3_SUFFIX}
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.${BC_O0_SUFFIX} ${file_pfx}.${CLANG_O3_SUFFIX}
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.${BC_O0_SUFFIX} ${file_pfx}.${ICC_O3_SUFFIX}
}

gen_for_ll_as()
{
  infile_pfx="$1"
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}.ll.${BC_O0_SUFFIX} ${infile_pfx}.as.${O0_SUFFIX}
}
