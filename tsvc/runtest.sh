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

    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${binary}.${func}.${compiler}.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${func} ${eq_opts} ${binary}.bc.O0.s.ALL.etfg ${binary}.${compiler}.eqchecker.O3.i386.ALL.tfg\""
  done < ${infile}
}

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

binary=tsvc
> chaperon_commands
compiler=gcc   gen_commands gcc_tsvc_funcs_vec      "--unroll-factor 4 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                        >> chaperon_commands
compiler=gcc   gen_commands gcc_tsvc_funcs_nonvec   "--unroll-factor 2 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                         >> chaperon_commands
compiler=clang gen_commands clang_tsvc_funcs_vec    " --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                      >> chaperon_commands 
compiler=clang gen_commands clang_tsvc_funcs_nonvec "--unroll-factor 2 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                         >> chaperon_commands

binary=tsvc_icc
compiler=icc   gen_commands icc_tsvc_funcs_vec      "--unroll-factor 4 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                        >> chaperon_commands
compiler=icc   gen_commands icc_tsvc_funcs_nonvec   "--unroll-factor 2 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"                         >> chaperon_commands 
compiler=icc   gen_commands icc_tsvc_funcs_reroll   "--unroll-factor 4 --dst-unroll-factor 5 --global-timeout 20000 --smt-query-timeout 50 --max_lookahead 0"  >> chaperon_commands

parallel --load '100%' < chaperon_commands
