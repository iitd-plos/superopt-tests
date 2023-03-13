#!/bin/sh

spec_par_tmpdir="par_tmpdir"
cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --enable-src-epsilon-paths --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20 --dyn-debug=invariants_dump"

par_run() {
  ${cmd_name} --tmpdir-path=${spec_par_tmpdir} --proof="$1".proof --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

mkdir -p ${spec_par_tmpdir}

par_run "$1"

echo -ne "$1\t"
tail -1 "$1".out
