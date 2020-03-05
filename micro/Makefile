include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

PROGS := ddec \
         lerner

PROGS_PREFIX := barthe \
                loop_unswitching \
                peeling \
                soft_pipe \
                splitting \
                tiling
                #lookuptable # reading from RODATA is not supported

# make them available to gentest.sh and runtest.sh
export PROGS
export PROGS_PREFIX

PROGS_EQCHECKER := $(PROGS) $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX))

# flags
GCC_I386_EQCHECKER_FLAGS= $(GCC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_I386_EQCHECKER_FLAGS= $(CLANG_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_I386_EQCHECKER_FLAGS= $(ICC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(ICC_EQCHECKER_NOUNROLL_FLAGS)

# define target variables

EQCHECKER_BC_O0_PROGS = $(addsuffix .bc.eqchecker.O0, $(PROGS_EQCHECKER))
EQCHECKER_BC_O2_PROGS = $(addsuffix .bc.eqchecker.O2, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3_PROGS = $(addsuffix .bc.eqchecker.O3, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3cg_PROGS = $(addsuffix .bc.eqchecker.O3.cg, $(PROGS_EQCHECKER))

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
  $(EQCHECKER_I386_CLANG_O0_PROGS) \
  $(EQCHECKER_I386_CLANG_O3_PROGS) \
  $(EQCHECKER_I386_GCC_O0_PROGS) \
  $(EQCHECKER_I386_GCC_O3_PROGS) \
  $(EQCHECKER_I386_ICC_O0_PROGS) \
  $(EQCHECKER_I386_ICC_O3_PROGS) \
  #$(EQCHECKER_I386_CCOMP_O2_PROGS)

LLVM_PROGS     = $(EQCHECKER_BC_O0_PROGS) $(EQCHECKER_BC_O3_PROGS)
LLVM_PROGS_ASM = $(addsuffix .ll, $(LLVM_PROGS))

ALL_PROGS = $(EQCHECKER_I386_PROGS) $(LLVM_PROGS) $(LLVM_PROGS_ASM)

# targets

all: $(ALL_PROGS)
	# HACK for current build
	$(foreach t,$(EQCHECKER_BC_O0_PROGS),sed -i 's/immarg//g' $(t).ll;)

clean:
	rm -f *.o *.tmp $(ALL_PROGS)

gentest:
	bash $(VPATH)/gentest.sh

runtest:
	bash $(VPATH)/runtest.sh

.DEFAULT_GOAL := all

.PHONY: all clean gentest runtest
