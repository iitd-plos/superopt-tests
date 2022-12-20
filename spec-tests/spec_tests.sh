#!/bin/sh

spec_tests_tmpdir="tests_tmpdir"
spec_tests_out_suffix="tests.out"
spec_tests_proof_suffix="tests.proof"
axpred_solver_max_depth=4

spec_tests_save_eq_proof() {
    cat eq.proof.ALL | tee "$1".${spec_tests_proof_suffix}
}

spec_tests_run() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_tests_tmpdir} --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee "$1".${spec_tests_out_suffix}
  spec_tests_save_eq_proof "$1"
}

spec_tests_run_enabled_spec_eqclass() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_tests_tmpdir} --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee "$1".${spec_tests_out_suffix}
  spec_tests_save_eq_proof "$1"
}

rm -f *.${spec_tests_out_suffix}
rm -f *.${spec_tests_proof_suffix}
mkdir ${spec_tests_tmpdir}

spec_tests_run edge1
spec_tests_run edge2
spec_tests_run edge3

spec_tests_run cond1
spec_tests_run cond2
spec_tests_run cond3

#spec_tests_run enum1

#spec_tests_run window1

spec_tests_run loop1
spec_tests_run loop2
spec_tests_run loop3
spec_tests_run loop4
spec_tests_run loop5
spec_tests_run_enabled_spec_eqclass loop6
spec_tests_run_enabled_spec_eqclass loop7

spec_tests_run couple1
spec_tests_run couple2
spec_tests_run couple3
spec_tests_run couple4

spec_tests_run fcall1
spec_tests_run fcall2
spec_tests_run fcall3
spec_tests_run fcall4

spec_tests_run ind1
spec_tests_run ind2
spec_tests_run ind3
spec_tests_run_enabled_spec_eqclass ind4
spec_tests_run_ind5

