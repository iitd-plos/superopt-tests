#!/bin/sh

speceq_build_superopt_config() {
    ninja -C $SUPEROPT_PROJECT_DIR/superopt/build/$1 codegen debug_gen typecheck eq eqgen harvest qd_helper_process smt_helper_process spec2tfg prove spec_debug
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
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/tfg2dot "$1"
}

speceq_spec2tfg() {
  mkdir -p "speceq_tmpdir_spec2tfg"
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec2tfg --call-context-depth 0 "$1".spec --ast-dump "speceq_tmpdir_spec2tfg/$1.out".ast -o "speceq_tmpdir_spec2tfg/$1.spec.etfg" >& "$1".spec2tfg
}

speceq_tfg_get_unrolled_paths() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/tfg_get_unrolled_paths $1 $2 --to-pc="$3" --unroll-factor="$4" --dyn-debug=graph_ec_unroll_dot_debug=3 >& "$1".paths
}

speceq_prove() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/prove --dyn-debug=speceq_solve=3,speceq_syntactic=3 --speceq-solver-approx-depth=16 "$1".in >& "$1".out
}

speceq_spec_debug() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec_debug >& spec_debug.out
}

speceq_cmd="${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq --speceq-solver-approx-depth=16 --enable-src-epsilon-paths --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=20"

speceq_run() {
  mkdir -p "speceq_tmpdir_$1"
  ${speceq_cmd} --tmpdir-path="speceq_tmpdir_$1" --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_run_preprocessed() {
  mkdir -p "speceq_tmpdir_$1"
  ${speceq_cmd} --use-already-preprocessed-files --tmpdir-path="speceq_tmpdir_$1" --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug() {
  mkdir -p "speceq_tmpdir_$1"
  ${speceq_cmd} --tmpdir-path="speceq_tmpdir_$1" --proof="$1".proof --dyn-debug=invariants_dump,prove_dump,correl_paths_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug_preprocessed() {
  mkdir -p "speceq_tmpdir_$1"
  ${speceq_cmd} --use-already-preprocessed-files --tmpdir-path="speceq_tmpdir_$1" --proof="$1".proof --dyn-debug=invariants_dump,prove_dump,correl_paths_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug_replay() {
  mkdir -p "speceq_tmpdir_$1"
  ${speceq_cmd} --tmpdir-path="speceq_tmpdir_$1" --proof="$1".proof --replay="$1".proof.record --dyn-debug=prove_dump=3,correl_paths_dump,ce_translate=2,add_point_using_ce=2,ce_eval=2 --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}
