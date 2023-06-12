include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/llvm-tests

EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 1200 --global-timeout 9000 --llvm-semantics

PROGS_EQCHECK_LL := prog1

UNROLL1_SRCDST = $(PROGS_EQCHECK_LL)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
