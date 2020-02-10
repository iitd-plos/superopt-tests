#!/bin/bash

set -eu # fail on error

# generate .etfg and .tfg files 
gen_for_src_dst()
{
  infile_pfx="$1"
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.bc.O0.s ${infile_pfx}_dst.gcc.eqchecker.O3.i386
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.bc.O0.s ${infile_pfx}_dst.clang.eqchecker.O3.i386
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${infile_pfx}_src.bc.O0.s ${infile_pfx}_dst.icc.eqchecker.O3.i386
}

gen_for_all()
{
  file_pfx="$1"
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.bc.O0.s ${file_pfx}.gcc.eqchecker.O3.i386
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.bc.O0.s ${file_pfx}.clang.eqchecker.O3.i386
  python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${file_pfx}.bc.O0.s ${file_pfx}.icc.eqchecker.O3.i386
}

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f}
done

for f in ${PROGS}
do
  gen_for_all ${f}
done
