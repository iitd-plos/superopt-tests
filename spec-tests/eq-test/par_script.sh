#!/bin/sh
s2c_cmd="${SUPEROPT_INSTALL_DIR}/bin/s2c --speceq-solver-weakening-depth=16 --speceq-solver-strengthening-depth=16 --enable-old-dst-path-enumeration --discard-llvm-ub-assumes --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20"

par_run() {
  mkdir -p "par_tmpdir_$1"
  mkdir -p "par_tmpdir"
  ${s2c_cmd} --tmpdir-path="par_tmpdir_$1" --proof=par_tmpdir_$1/proof --dyn-debug=invariants_dump,correl_paths_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& par_tmpdir/"$1".eq.out
}

par_run "$1"

echo -ne "$1\t\t"
tail -n2 par_tmpdir/"$1".eq.out | head -n1
