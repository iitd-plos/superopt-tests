#!/bin/sh

spec_par_tmpdir="par_tmpdir"
axpred_solver_max_depth=4
cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --axpred-solver-max-depth=${axpred_solver_max_depth} --disable-dst-to-src-submap"

par_run() {
  ${cmd_name} --tmpdir-path=${spec_par_tmpdir} --proof="$1".proof --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

par_run_enabled_spec_eqclass() {
  ${cmd_name} --tmpdir-path=${spec_par_tmpdir} --proof="$1".proof --enable-manual-spec-eqclass=true --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

mkdir -p ${spec_par_tmpdir}

if [[ "$2" == "enable_manual_eqclass" ]]
then
  par_run_enabled_spec_eqclass "$1"
else
  par_run "$1"
fi

echo -ne "$1\t"
tail -1 "$1".out
