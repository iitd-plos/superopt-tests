include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/malloc-tests

UNROLL1 := linked_list

UNROLL1_GCC = $(UNROLL1)
UNROLL1_CLANG = $(UNROLL1)
EXTRA_FLAGS := --smt-query-timeout 1200 --global-timeout 9000

C_STD = gnu11
include $(SRCDIR)/Makefile.template
