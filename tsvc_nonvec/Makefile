include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.eqchecker.common  # build rules

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/tsvc_nonvec

PROGS_EQCHECKER := semalign_ex_src semalign_ex_dst

BC_O0_PROGS = $(addsuffix .bc.O0, $(PROGS_EQCHECKER))
BC_O2_PROGS = $(addsuffix .bc.O2, $(PROGS_EQCHECKER))
BC_O3_PROGS = $(addsuffix .bc.O3, $(PROGS_EQCHECKER))
BC_O3cg_PROGS = $(addsuffix .bc.O3.cg, $(PROGS_EQCHECKER))

EQCHECKER_I386_GCC_O0_PROGS = $(addsuffix .gcc.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O2_PROGS = $(addsuffix .gcc.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O3_PROGS = $(addsuffix .gcc.eqchecker.O3.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_CLANG_O0_PROGS = $(addsuffix .clang.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O2_PROGS = $(addsuffix .clang.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O3_PROGS = $(addsuffix .clang.eqchecker.O3.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_ICC_O0_PROGS = $(addsuffix .icc.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O2_PROGS = $(addsuffix .icc.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O3_PROGS = $(addsuffix .icc.eqchecker.O3.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_CCOMP_O2_PROGS = $(addsuffix .ccomp.eqchecker.O2.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_PROGS = \
  $(EQCHECKER_I386_GCC_O0_PROGS) \
  $(EQCHECKER_I386_GCC_O3_PROGS) \
  $(EQCHECKER_I386_CLANG_O0_PROGS) \
  $(EQCHECKER_I386_CLANG_O3_PROGS) \
  #$(EQCHECKER_I386_ICC_O0_PROGS) \
  #$(EQCHECKER_I386_ICC_O3_PROGS) \
  #$(EQCHECKER_I386_CCOMP_O2_PROGS) \

BC_PROGS = $(BC_O0_PROGS) $(BC_O3_PROGS)
LLVM_PROGS = $(BC_PROGS)

LLVM_PROGS_ASM = $(addsuffix .s, $(LLVM_PROGS))

# targets

all: $(EQCHECKER_I386_PROGS) $(LLVM_PROGS) $(LLVM_PROGS_ASM)

clean:
	rm -f *.o *.tmp $(EQCHECKER_I386_PROGS) $(LLVM_PROGS) $(LLVM_PROGS_ASM)

.DEFAULT_GOAL := all

.PHONY: all clean
