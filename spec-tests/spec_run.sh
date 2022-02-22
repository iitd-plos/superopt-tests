#!/bin/sh

spec_tmpdir="tmpdir"
spec_run_out="spec_run.out"

run() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --tmpdir-path=${spec_tmpdir} --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee ${spec_run_out}
}

run_enabled_spec_eqclass() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --tmpdir-path=${spec_tmpdir} --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee ${spec_run_out}
}

debug() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --tmpdir-path=${spec_tmpdir} --dyn-debug=correlate=3,stability=3,spec_as_src=3,spec_dbg=3,reconcile_ce=3 --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee ${spec_run_out}
}

debug_enabled_spec_eqclass() {
    ${SUPEROPT_INSTALL_DIR}/bin/eq32 --tmpdir-path=${spec_tmpdir} --dyn-debug=correlate=3,stability=3,spec_as_src=3,spec_dbg=3,reconcile_ce=3 --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c | tee ${spec_run_out}
}
