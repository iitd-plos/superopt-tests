include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/xv6-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 600 --global-timeout 32000 --failset-prune 0

PROGS_EQCHECKER_COMPILER := \
														namei
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
