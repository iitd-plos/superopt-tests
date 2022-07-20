#!/bin/sh

spec2tfg() {
	${SUPEROPT_PROJECT_DIR}/superopt/build/etfg_x64/spec2tfg "$1".spec -o "$1".etfg -ast-dump "$1".ast
}

