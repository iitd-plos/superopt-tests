#!/bin/sh

spec_run_tmpdir="run_tmpdir"
spec_run_out="run.out"
axpred_solver_max_depth=4

speceq_run() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_run_tmpdir} --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_run_enabled_spec_eqclass() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_run_tmpdir} --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_debug() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_run_tmpdir} --dyn-debug=ftmap_pointsto_debug=3,correlate=3,stability=3,spec_as_src=3,spec_dbg=3,reconcile_ce=3,suffixpath_dfa=3,axpred_solver=3,ce_translate=3 --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_debug_enabled_spec_eqclass() {
  ${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable_SSA --tmpdir-path=${spec_run_tmpdir} --dyn-debug=ftmap_pointsto_debug=3,correlate=3,stability=3,spec_as_src=3,spec_dbg=3,reconcile_ce=3,suffixpath_dfa=3,axpred_solver=3,ce_translate=3 --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

mkdir ${spec_run_tmpdir}