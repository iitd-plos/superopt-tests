#!/bin/bash

set -eu # fail on error

BC_O0_SUFFIX=${BC_O0_SUFFIX}.ll

> gentest_chaperon_commands
# generate .etfg and .tfg files 
# TODO: pass a flag so that .etfg is not regenerated
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${PWD}/oopsla_tests.${BC_O0_SUFFIX}     ${PWD}/oopsla_tests.${CLANG_O3_SUFFIX}" >> gentest_chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${PWD}/oopsla_tests.${BC_O0_SUFFIX}     ${PWD}/oopsla_tests.${GCC_O3_SUFFIX}"   >> gentest_chaperon_commands
echo "python ${SUPEROPT_PROJECT_DIR}/superopt/utils/eqbin.py -n ${PWD}/oopsla_tests.${BC_O0_SUFFIX}     ${PWD}/oopsla_tests.${ICC_O3_SUFFIX}"   >> gentest_chaperon_commands
