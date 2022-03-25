include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/llvm-tests

EXTRA_FLAGS := --dyn-debug=stats --smt-query-timeout 1200 --global-timeout 9000 --relocatable-memlabels-and-safety --llvm-semantics

PROGS_EQCHECK_LL := \
                    prog1

UNROLL1_SRCDST = $(PROGS_EQCHECK_LL)

PROGS_LL := $(addsuffix _src,$(PROGS_EQCHECK_LL)) $(addsuffix _dst,$(PROGS_EQCHECK_LL))

C_STD = gnu11
include $(SRCDIR)/Makefile.template
