#!/bin/sh

s2c_sample_run() {
  mkdir -p "tmpdir_$1"
  mkdir -p "tmpdir"
  s2c --tmpdir-path="tmpdir_$1" --proof=tmpdir_$1/proof --dyn-debug=invariants_dump,correl_paths_dump --unroll-factor=4 --speceq-solver-pre-expansion-depth=5 --speceq-solver-weakening-depth=8 --speceq-solver-strengthening-depth=8 "$1".spec "$1".c "$1".iospecs >& tmpdir/"$1".eq.out
}

s2c_sample_debug() {
  mkdir -p "tmpdir_$1"
  mkdir -p "tmpdir"
  s2c --tmpdir-path="tmpdir_$1" --proof=tmpdir_$1/proof --dyn-debug=prove_dump=3,ce_translate=2,add_point_using_ce=2,ce_eval=2 --speceq-solver-weakening-depth=8 --speceq-solver-strengthening-depth=8 "$1".spec "$1".c "$1".iospecs >& tmpdir/"$1".eq.out
}
