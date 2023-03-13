#!/bin/sh

build_superopt_config() {
    ninja -C $SUPEROPT_PROJECT_DIR/superopt/build/$1 codegen debug_gen typecheck eq eqgen harvest qd_helper_process smt_helper_process spec2tfg
}

build_llvm_incremental() {
    ninja -C $SUPEROPT_PROJECT_DIR/llvm-project/build llvm2tfg
}

build_llvm_full() {
    ninja -C $SUPEROPT_PROJECT_DIR/llvm-project/build llvm2tfg clang opt
}

build_incremental() {
    build_superopt_config etfg_i386 &&
    build_superopt_config etfg_x64  &&
    build_superopt_config i386_i386 &&
    build_superopt_config x64_x64   &&
    build_llvm_incremental 
}

build_full() {
    build_superopt_config etfg_i386 &&
    build_superopt_config etfg_x64  &&
    build_superopt_config i386_i386 &&
    build_superopt_config x64_x64   &&
    build_llvm_full
}

speceq_tmpdir="speceq_tmpdir"
speceq_cmd="${SUPEROPT_INSTALL_DIR}/bin/eq32 --enable-src-epsilon-paths --disable-dst-to-src-submap --disable-assumed-eqclasses --disable-houdini-axiom-based-timeout-dumps --houdini-axiom-based-smt-query-timeout=10"

speceq_run() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --dyn-debug=invariants_dump,prove_dump --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

speceq_debug_replay() {
  ${speceq_cmd} --tmpdir-path=${speceq_tmpdir} --proof="$1".proof --replay="$1".proof.record --dyn-debug=prove_dump=3,ce_translate=2,add_point_using_ce=2,ce_eval=2 --spec-iospecs="$1".iospecs "$1".spec "$1".c >& "$1".out
}

mkdir -p ${speceq_tmpdir}
