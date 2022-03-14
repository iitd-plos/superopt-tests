#!/bin/sh

spec_tests_out="spec_tests.out"
spec_tests_proof="spec_tests.proof"
spec_tests_tmpdir="tmpdir"

spec_tests_save_eq_proof() {
    cat eq.proof.ALL | tee -a ${spec_tests_proof}
}

spec_tests_run() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --disable_SSA --tmpdir-path=${spec_tests_tmpdir} --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee -a ${spec_tests_out}
    spec_tests_save_eq_proof
}

spec_tests_run_enabled_spec_eqclass() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --disable_SSA --tmpdir-path=${spec_tests_tmpdir} --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee -a ${spec_tests_out}
    spec_tests_save_eq_proof
}

rm -f ${spec_tests_out}
rm -f ${spec_tests_proof}
mkdir -p ${spec_tests_tmpdir}

spec_tests_run edge1
spec_tests_run edge2
spec_tests_run edge3

spec_tests_run cond1
spec_tests_run cond2
spec_tests_run cond3

spec_tests_run enum1

spec_tests_run window1

spec_tests_run loop1
spec_tests_run loop2
spec_tests_run loop3
spec_tests_run loop4
spec_tests_run loop5

spec_tests_run couple1
spec_tests_run couple2
spec_tests_run couple3
spec_tests_run couple4

spec_tests_run_enabled_spec_eqclass guess1
spec_tests_run_enabled_spec_eqclass guess2
