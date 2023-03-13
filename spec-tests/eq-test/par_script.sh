#!/bin/sh

cmd_name="${SUPEROPT_INSTALL_DIR}/bin/eq32 --speceq-solver-approx-depth=16 --enable-src-epsilon-paths --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20 --dyn-debug=invariants_dump,correl_paths_dump"

par_run() {
  mkdir -p "par_tmpdir_$1"
  ${cmd_name} --tmpdir-path="par_tmpdir_$1" --proof="$1".proof --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

par_run "$1"

echo -ne "$1\t\t"
tail -1 "$1".out
