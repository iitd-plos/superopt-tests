#!/bin/sh

s2c_benchmark_run() {
  mkdir -p "tmpdir_$1_$2_$3_$4_$5_$6"
  mkdir -p "tmpdir"
  s2c --tmpdir-path="tmpdir_$1_$2_$3_$4_$5_$6" --proof=tmpdir_$1_$2_$3_$4_$5_$6/proof --dyn-debug=invariants_dump,correl_paths_dump --unroll-factor=4 --spec-coupling-hint-string="$1_$3" --speceq-solver-pre-expansion-depth=$4 --speceq-solver-weakening-depth=$5 --speceq-solver-strengthening-depth=$6 "$1".spec "$1_$3".c "$1_$2".iospecs >& tmpdir/"$1_$2_$3_$4_$5_$6".eq.out
}

s2c_benchmark_debug() {
  mkdir -p "tmpdir_$1_$2_$3_$4_$5_$6"
  mkdir -p "tmpdir"
  s2c --tmpdir-path="tmpdir_$1_$2_$3_$4_$5_$6" --proof=tmpdir_$1_$2_$3_$4_$5_$6/proof --dyn-debug=prove_dump=3,ce_translate=2,add_point_using_ce=2,ce_eval=2 --unroll-factor=4 --spec-coupling-hint-string="$1_$3" --speceq-solver-pre-expansion-depth=$4 --speceq-solver-weakening-depth=$5 --speceq-solver-strengthening-depth=$6 "$1".spec "$1_$3".c "$1_$2".iospecs >& tmpdir/"$1_$2_$3_$4_$5_$6".eq.out
}
