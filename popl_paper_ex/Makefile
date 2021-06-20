include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/popl_paper_ex

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_ICC = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := '--dyn-debug=stats --smt-query-timeout 1200 --global-timeout 100000'

PROGS_EQCHECKER_COMPILER := addr_taken vla 
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)
#


C_STD = gnu11
include $(SRCDIR)/Makefile.template
