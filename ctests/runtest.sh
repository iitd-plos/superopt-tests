#!/bin/bash

set -eu # fail on error

###########################

# function specific eqflags
# NOTE: compiler specific version (with .<compiler> suffix) overrides the normal one
declare -A g_eqflags
g_eqflags["chomp.get_good_move.icc"]="--unroll-factor 2"
g_eqflags["chomp.make_data.clang"]="--unroll-factor 8"
g_eqflags["chomp.make_data.gcc"]="--unroll-factor 2"
#g_eqflags["chomp.copy_data.clang"]="--unroll-factor 8 --max_lookahead 8"  # need disjunctive inequality predicates
#g_eqflags["chomp.melt_data.clang"]="--unroll-factor 8 --max_lookahead 8"  # need disjunctive inequality predicates
#g_eqflags["chomp.melt_data_simple.clang"]="--unroll-factor 8 --max_lookahead 8"  # need disjunctive inequality predicates
g_eqflags["chomp.get_real_move.clang"]="--anchor_loop_tail" # _unpeeling_ by clang
g_eqflags["chomp.melt_data.icc"]="--consider_non_vars_for_dst_ineq" # branch condition involves stack element
#g_eqflags["fannkuch.copy_perm.clang"]="--unroll-factor 8 --max_lookahead 8"  # need disjunctive inequality predicates
g_eqflags["fannkuch.fannkuch.clang"]="--unroll-factor 8 --max_lookahead 8" # takes too much time
g_eqflags["fannkuch.init_perm1.clang"]="--unroll-factor 8" # reads from RODATA
g_eqflags["knucleotide.hash_table_size.icc"]="--unroll-factor 4 --max_lookahead 4" # loop peeled 4 times by compiler
g_eqflags["knucleotide.main"]="--unroll-factor 2"
g_eqflags["sha1.do_bench.clang"]="--unroll-factor 16" # reads from RODATA

###########################

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

gen_for_src_dst()
{
  infile_pfx="$1"
  eqflags=${g_eqflags[$infile_pfx]:-}
  eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
  eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
  eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
  echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${infile_pfx} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${infile_pfx}_src.bc.O0.s.ALL.etfg ${infile_pfx}_dst.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
}

get_funcs()
{
  grep '=FunctionName:' "${file_pfx}.bc.O0.s.ALL.etfg" | grep -v 'MYmy' | cut -f2 -d' '
}

gen_for_all()
{
  file_pfx="$1"
  for fn in $(get_funcs "${file_pfx}");
  do
    infile_pfx="${file_pfx}.${fn}"
    eqflags=${g_eqflags[$infile_pfx]:-}
    eqflags_clang=${g_eqflags[${infile_pfx}.clang]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_clang} --proof ${infile_pfx}.clang.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
    eqflags_gcc=${g_eqflags[${infile_pfx}.gcc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_gcc} --proof ${infile_pfx}.gcc.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
    eqflags_icc=${g_eqflags[${infile_pfx}.icc]:-${eqflags}}
    echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/${infile_pfx}.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f ${fn} ${eqflags_icc} --proof ${infile_pfx}.icc.proof ${file_pfx}.bc.O0.s.ALL.etfg ${file_pfx}.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands
  done
}

for f in ${PROGS_PREFIX}
do
  gen_for_src_dst ${f}
done

for f in ${PROGS}
do
  gen_for_all ${f}
done

parallel --load '50%' < chaperon_commands
