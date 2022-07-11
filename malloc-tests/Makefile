include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/malloc-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 1200 --global-timeout 9000

PROGS_EQCHECKER_COMPILER := \
  													linked_list

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
