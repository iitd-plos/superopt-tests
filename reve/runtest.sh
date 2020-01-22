#!/bin/bash

set -eu # fail on error

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

# digit10 -- query timeout
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/digit10.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f digit10 --unroll-factor 4 --max_lookahead 4 reve_src.bc.O0.s.ALL.etfg reve_dst.clang.eqchecker.O3.i386.ALL.tfg\""  >> chaperon_commands
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/digit10.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f digit10 --unroll-factor 4 --max_lookahead 4 reve_src.bc.O0.s.ALL.etfg reve_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/digit10.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f digit10 --unroll-factor 4 --max_lookahead 4 reve_src.bc.O0.s.ALL.etfg reve_dst.icc.eqchecker.O3.i386.ALL.tfg\""    >> chaperon_commands

# propagate -- fails in memory safety check
# NOTE: should work without lookahead once path_locs have been implemented
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/propagate.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f propagate --max-lookahead 1 reve_src.bc.O0.s.ALL.etfg reve_dst.clang.eqchecker.O3.i386.ALL.tfg\"" >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/propagate.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f propagate --max-lookahead 1 reve_src.bc.O0.s.ALL.etfg reve_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/propagate.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f propagate --max-lookahead 1 reve_src.bc.O0.s.ALL.etfg reve_dst.icc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands

# send -- harvest fails
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/send.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f send --unroll-factor 8 --max_lookahead 8 llreve_src.bc.O0.s.ALL.etfg llreve_dst.clang.eqchecker.O3.i386.ALL.tfg\"" >> chaperon_commands
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/send.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f send --unroll-factor 8 --max_lookahead 8 llreve_src.bc.O0.s.ALL.etfg llreve_dst.gcc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands
#echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/send.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f send --unroll-factor 8 --max_lookahead 8 llreve_src.bc.O0.s.ALL.etfg llreve_dst.icc.eqchecker.O3.i386.ALL.tfg\""   >> chaperon_commands

parallel --load '100%' < chaperon_commands
