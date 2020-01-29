#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
declare -A fn_eqflags
fn_eqflags["barthe"]=""
fn_eqflags["loop_unswitching"]="--unroll-factor 1"

###########################

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

gen_for_src_dst()
{
  infile_pfx="$1"
  eqflags=""
  if [[ -v fn_eqflags[$infile_pfx] ]];
  then
    eqflags=${fn_eqflags[$infile_pfx]}
  fi
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags} --proof ${infile_pfx}.clang.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags} --proof ${infile_pfx}.gcc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags} --proof ${infile_pfx}.icc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
}

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f}
done

parallel --load '100%' < chaperon_commands
