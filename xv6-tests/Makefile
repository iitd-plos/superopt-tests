include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/xv6-tests

UNROLL1 := namei
UNROLL1_GCC := $(UNROLL1)
UNROLL1_CLANG := $(UNROLL1)
EXTRA_FLAGS := --smt-query-timeout 600 --global-timeout 32000 --failset-prune 0

C_STD = gnu11
include $(SRCDIR)/Makefile.template
