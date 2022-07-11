include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/cpp

UNROLL1_GPP = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANGPP = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 1200 --global-timeout 9000

PROGS_EQCHECKER_COMPILER :=

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
