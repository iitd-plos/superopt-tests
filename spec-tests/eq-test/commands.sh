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
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec2tfg --call-context-depth 0 "$1".spec --ast-dump speceq_tmpdir/"$1".ast -o speceq_tmpdir/"$1".spec.etfg >& "$1".spec2tfg
}

speceq_prove() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/prove --dyn-debug=speceq_solve=3,speceq_syntactic=3 --speceq-solver-approx-depth=20 "$1".in >& "$1".out
}

speceq_spec_debug() {
  ${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec_debug >& spec_debug.out
}

speceq_tmpdir="speceq_tmpdir"
speceq_cmd="${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/eq --speceq-solver-approx-depth=10 --enable-src-epsilon-paths --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=10"

speceq_run() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_run_preprocessed() {
  ${speceq_cmd} --use-already-preprocessed-files --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump,prove_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug_preprocessed() {
  ${speceq_cmd} --use-already-preprocessed-files --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump,prove_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug_replay() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --replay="$1".proof.record --dyn-debug=prove_dump=3,ce_translate=2,add_point_using_ce=2,ce_eval=2 --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

mkdir -p ${speceq_tmpdir}
