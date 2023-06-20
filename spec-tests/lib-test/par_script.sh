#!/bin/sh

s2c_cmd="${SUPEROPT_INSTALL_DIR}/bin/s2c --unroll-factor=4 --enable-old-dst-path-enumeration --discard-llvm-ub-assumes --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20"

par_run() {
  mkdir -p "par_tmpdir_$1_$2_$3_$4_$5"
  mkdir -p "par_tmpdir"
  ${s2c_cmd} --speceq-solver-weakening-depth=$4 --speceq-solver-strengthening-depth=$5 --spec-coupling-hint-string="$1_$3" --tmpdir-path="par_tmpdir_$1_$2_$3_$4_$5" --proof=par_tmpdir_$1_$2_$3_$4_$5/proof --dyn-debug=invariants_dump,correl_paths_dump --spec-iospecs="$1_$2".iospecs "$1".spec "$1_$3".c >& par_tmpdir/"$1_$2_$3_$4_$5".eq.out
}

par_run "$1" "$2" "$3" "$4" "$5"

echo -ne "$1\t$2\t$3\t$4\t$5\t\t"
tail -n2 par_tmpdir/"$1_$2_$3_$4_$5".eq.out | head -n1
