#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

EQLOGS=${PWD}/eqlogs
mkdir -p ${EQLOGS}

> chaperon_commands

echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.bitflip.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f bitflip --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${CLANG_O3_SUFFIX}.ALL.tfg\""  >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.bitflip.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f bitflip --unroll-factor 16 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${GCC_O3_SUFFIX}.ALL.tfg\""   >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.bitflip.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f bitflip --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${ICC_O3_SUFFIX}.ALL.tfg\""    >> chaperon_commands

echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.strlen.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${CLANG_O3_SUFFIX}.ALL.tfg\""    >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.strlen.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 16 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${GCC_O3_SUFFIX}.ALL.tfg\""     >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.strlen.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 8 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${ICC_O3_SUFFIX}.ALL.tfg\""      >> chaperon_commands

# expected memory safety check failure on page_size < 4
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.safety_fail.strlen.clang.O3.eqlog\" \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 8  --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 --page_size 2 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${CLANG_O3_SUFFIX}.ALL.tfg\""   >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.safety_fail.strlen.gcc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 16 --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 --page_size 2 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${GCC_O3_SUFFIX}.ALL.tfg\""     >> chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/chaperon.py --logfile \"${EQLOGS}/semalign_ex.safety_fail.strlen.icc.O3.eqlog\"   \"${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq -f strlen --unroll-factor 8  --global-timeout 20000 --smt-query-timeout 300 --max_lookahead 4 --page_size 2 semalign_ex_src.${BC_O0_SUFFIX}.ALL.etfg semalign_ex_dst.${ICC_O3_SUFFIX}.ALL.tfg\""     >> chaperon_commands

parallel --load '100%' < chaperon_commands
