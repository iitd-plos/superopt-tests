#!/bin/sh

speceq_build_superopt_config() {
    ninja -C $SUPEROPT_PROJECT_DIR/superopt/build/$1 codegen debug_gen typecheck eq eqgen s2c harvest qd_helper_process smt_helper_process spec2tfg prove spec_debug
}

speceq_build_llvm_incremental() {
    ninja -C $SUPEROPT_PROJECT_DIR/llvm-project/build llvm2tfg
}

speceq_build_llvm_full() {
    ninja -C $SUPEROPT_PROJECT_DIR/llvm-project/build llvm2tfg clang opt
}

speceq_build_incremental() {
    speceq_build_superopt_config etfg_i386 &&
    speceq_build_superopt_config etfg_x64  &&
    speceq_build_superopt_config i386_i386 &&
    speceq_build_superopt_config x64_x64   &&
    speceq_build_llvm_incremental 
}

speceq_build_full() {
    speceq_build_superopt_config etfg_i386 &&
    speceq_build_superopt_config etfg_x64  &&
    speceq_build_superopt_config i386_i386 &&
    speceq_build_superopt_config x64_x64   &&
    speceq_build_llvm_full
}

speceq_tfg2dot() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/tfg2dot --annotate "$1" "$2"
}

speceq_spec2tfg() {
  mkdir -p "tmpdir"
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec2tfg --call-context-depth 0 "$1".spec --ast-dump "tmpdir/$1.out".ast -o "tmpdir/$1.spec.etfg" >& tmpdir/"$1".spec2tfg.out
}

# speceq_tfg_get_unrolled_paths() {
#   ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/tfg_get_unrolled_paths $1 $2 --to-pc="$3" --unroll-factor="$4" --dyn-debug=graph_ec_unroll_dot_debug=3 >& tmpdir/"$1".paths.out
# }

# speceq_prove() {
#   ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/prove --dyn-debug=speceq_solve=3,speceq_syntactic=3 --speceq-solver-weakening-depth=16 --speceq-solver-strengthening-depth=16 tmpdir/"$1".in >& tmpdir/"$1".prove.out
# }

speceq_spec_debug() {
  mkdir -p "tmpdir"
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec_debug >& "tmpdir/spec_debug.out"
}

speceq_run() {
  mkdir -p "tmpdir_$1_$2_$3_$4_$5_$6"
  mkdir -p "tmpdir"
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/s2c --unroll-factor=4 --enable-old-dst-path-enumeration --discard-llvm-ub-assumes --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20 --speceq-solver-exact-expansion-depth=$4 --speceq-solver-weakening-depth=$5 --speceq-solver-strengthening-depth=$6 --spec-coupling-hint-string="$1_$3" --tmpdir-path="tmpdir_$1_$2_$3_$4_$5_$6" --proof=tmpdir_$1_$2_$3_$4_$5_$6/proof --dyn-debug=invariants_dump,correl_paths_dump --spec-iospecs="$1_$2".iospecs "$1".spec "$1_$3".c >& tmpdir/"$1_$2_$3_$4_$5_$6".eq.out
}

speceq_debug() {
  mkdir -p "tmpdir_$1_$2_$3_$4_$5_$6"
  mkdir -p "tmpdir"
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/s2c --unroll-factor=4 --use-already-preprocessed-files --enable-old-dst-path-enumeration --discard-llvm-ub-assumes --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20 --speceq-solver-exact-expansion-depth=$4 --speceq-solver-weakening-depth=$5 --speceq-solver-strengthening-depth=$6 --spec-coupling-hint-string="$1_$3" --tmpdir-path="tmpdir_$1_$2_$3_$4_$5_$6" --proof=tmpdir_$1_$2_$3_$4_$5_$6/proof --dyn-debug=invariants_dump,correl_paths_dump,prove_dump,spec_dbg,purify_pred_dump,speceq_solve=3 --spec-iospecs="$1_$2".iospecs "$1".spec "$1_$3".c >& tmpdir/"$1_$2_$3_$4_$5_$6".eq.out
}
