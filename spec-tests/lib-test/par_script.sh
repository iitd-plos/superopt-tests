#!/bin/sh

cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --unroll-factor=4 --speceq-solver-approx-depth=16 --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20 --dyn-debug=invariants_dump,correl_paths_dump"

par_run() {
  mkdir -p "par_tmpdir_$1_$2_$3"
  ${cmd_name} --tmpdir-path="par_tmpdir_$1_$2_$3" --spec-coupling-hint-string="$1_$3" --proof="$1_$2_$3".proof --spec-iospecs="$1_$2".iospecs "$1".spec "$1_$3".c >& "$1_$2_$3".out
}

par_run "$1" "$2" "$3"

echo -ne "$1\t$2\t$3\t\t"
tail -1 "$1_$2_$3".out
