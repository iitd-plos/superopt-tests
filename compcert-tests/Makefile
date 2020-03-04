include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

GCC_I386_FLAGS=
CLANG_I386_FLAGS=
ICC_I386_FLAGS=

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/compcert-tests

PROGS := fib emptyloop fibo_iter lists

PROGS_GCC=$(PROGS) $(GCC_CLANG_ICC_PROGS)
PROGS_CLANG=$(PROGS) $(GCC_CLANG_ICC_PROGS)
PROGS_ICC=$(PROGS) $(GCC_CLANG_ICC_PROGS)
PROGS_CCOMP= #$(CINT_PROGS)

CLANG_O0_PROGS = $(addsuffix .clang.O0, $(PROGS_CLANG))
CLANG_O2_PROGS = $(addsuffix .clang.O2, $(PROGS_CLANG))
CLANG_O3_PROGS = $(addsuffix .clang.O3, $(PROGS_CLANG))

LLC_O0_PROGS = $(addsuffix .llc.O0, $(PROGS_CLANG))
LLC_O2_PROGS = $(addsuffix .llc.O2, $(PROGS_CLANG))
LLC_O3_PROGS = $(addsuffix .llc.O3, $(PROGS_CLANG))

ICC_O0_PROGS = $(addsuffix .icc.O0, $(PROGS_ICC))
ICC_O2_PROGS = $(addsuffix .icc.O2, $(PROGS_ICC))
ICC_O3_PROGS = $(addsuffix .icc.O3, $(PROGS_ICC))

CCOMP_O2_PROGS = $(addsuffix .ccomp.O2, $(PROGS_CCOMP))
CCOMP_O0_PROGS = $(addsuffix .ccomp.O0, $(PROGS_CCOMP))

BC_O0_PROGS = $(addsuffix .bc.O0, $(PROGS))
BC_O2_PROGS = $(addsuffix .bc.O2, $(PROGS))
BC_O3_PROGS = $(addsuffix .bc.O3, $(PROGS))
BC_O3cg_PROGS = $(addsuffix .bc.O3.cg, $(PROGS))

I386_LLC_O0_PROGS = $(addsuffix .i386, $(LLC_O0_PROGS))
I386_LLC_O2_PROGS = $(addsuffix .i386, $(LLC_O2_PROGS))
I386_LLC_O3_PROGS = $(addsuffix .i386, $(LLC_O3_PROGS))

I386_GCC_O0_PROGS = $(addsuffix .gcc.O0.i386, $(PROGS_GCC))
I386_GCC_O2_PROGS = $(addsuffix .gcc.O2.i386, $(PROGS_GCC))
I386_GCC_O3_PROGS = $(addsuffix .gcc.O3.i386, $(PROGS_GCC))

I386_CLANG_O0_PROGS = $(addsuffix .i386, $(CLANG_O0_PROGS))
I386_CLANG_O2_PROGS = $(addsuffix .i386, $(CLANG_O2_PROGS))
I386_CLANG_O3_PROGS = $(addsuffix .i386, $(CLANG_O3_PROGS))

I386_ICC_O0_PROGS = $(addsuffix .i386, $(ICC_O0_PROGS))
I386_ICC_O2_PROGS = $(addsuffix .i386, $(ICC_O2_PROGS))
I386_ICC_O3_PROGS = $(addsuffix .i386, $(ICC_O3_PROGS))

I386_CCOMP_O0_PROGS = $(addsuffix .i386, $(CCOMP_O0_PROGS))
I386_CCOMP_O2_PROGS = $(addsuffix .i386, $(CCOMP_O2_PROGS))

I386_PROGS = \
  $(BC_O0_PROGS) \
  $(BC_O3_PROGS) \
  $(BC_O3cg_PROGS) \
  $(I386_GCC_O0_PROGS) \
  $(I386_GCC_O3_PROGS) \
  $(I386_CLANG_O0_PROGS) \
  $(I386_CLANG_O3_PROGS) \
  $(I386_LLC_O0_PROGS) \
  $(I386_LLC_O3_PROGS) \
  $(I386_ICC_O0_PROGS) \
  $(I386_ICC_O3_PROGS)

# define target variables

clean:
	rm -f *.o *.tmp $(ALL_PROGS)

all: $(I386_PROGS)

.DEFAULT_GOAL := all

.PHONY: all clean

codegen_test::
	python $(SRCDIR)/scripts/codegen_test.py --superopt_root $(SUPEROPT_PROJECT_DIR) --prefix compcert-tests $(PROGS) > codegen_test.cmds
	parallel --load '100%' < codegen_test.cmds
	python $(SRCDIR)/scripts/profile.py
