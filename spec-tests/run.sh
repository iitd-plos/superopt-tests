#!/bin/sh

spec_run_tmpdir="run_tmpdir"
spec_run_out="run.out"
axpred_solver_max_depth=4
cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable-dst-to-src-submap"

speceq_run() {
  ${cmd_name} --tmpdir-path=${spec_run_tmpdir} --proof="$1".proof --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_run_enabled_spec_eqclass() {
  ${cmd_name} --tmpdir-path=${spec_run_tmpdir} --proof="$1".proof --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_debug() {
  ${cmd_name} --tmpdir-path=${spec_run_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_debug_replay() {
  ${cmd_name} --tmpdir-path=${spec_run_tmpdir} --proof="$1".proof --replay="$1".proof.record --dyn-debug=prove_dump=3,ce_translate=2,add_point_using_ce=2,ce_eval=2 --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

speceq_debug_enabled_spec_eqclass() {
  ${cmd_name} --tmpdir-path=${spec_run_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c |& tee ${spec_run_out}
}

mkdir -p ${spec_run_tmpdir}
