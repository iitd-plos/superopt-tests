#!/bin/bash

set -eu # fail on error

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

gen_for_src_dst()
{
  infile_pfx="$1"
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
}

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f}
done

parallel --load '100%' < chaperon_commands
