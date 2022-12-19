#!/bin/sh

spec2tfg_run() {
	${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_i386/spec2tfg "$1".spec -o "$1".etfg -ast-dump "$1".ast --dyn-debug=sort_canonical=3,spec_dbg=3
}

