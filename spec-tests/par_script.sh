#!/bin/sh

spec_par_tmpdir="par_tmpdir"
cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --disable-dst-to-src-submap --smt-query-timeout=5"

par_run() {
  ${cmd_name} --tmpdir-path=${spec_par_tmpdir} --proof="$1".proof --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

mkdir -p ${spec_par_tmpdir}

par_run "$1"

echo -ne "$1\t"
tail -1 "$1".out
