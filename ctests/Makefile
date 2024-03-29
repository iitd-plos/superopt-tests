include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/ctests

PROGS := chomp \
				 fannkuch \
				 knucleotide \
				 nsieve \
				 qsort \
				 sha1 \
				 #nsievebits \ # ext_rotate_left expr is generated which is not supported by solvers

# make them available to gentest.sh and runtest.sh
export PROGS

PROGS_EQCHECKER := $(PROGS) $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX))

# flags
GCC_I386_EQCHECKER_FLAGS= $(GCC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_I386_EQCHECKER_FLAGS= $(CLANG_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_I386_EQCHECKER_FLAGS= $(ICC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(ICC_EQCHECKER_NOUNROLL_FLAGS)

# define target variables

BC_O0_SUFFIX := bc.eqchecker.O0
GCC_O3_SUFFIX := gcc.eqchecker.O3.i386
CLANG_O3_SUFFIX := clang.eqchecker.O3.i386
ICC_O3_SUFFIX := icc.eqchecker.O3.i386

# make available to gentest.sh and runtest.sh
export BC_O0_SUFFIX
export GCC_O3_SUFFIX
export CLANG_O3_SUFFIX
export ICC_O3_SUFFIX

EQCHECKER_BC_O0_PROGS = $(addsuffix .$(BC_O0_SUFFIX), $(PROGS_EQCHECKER))
EQCHECKER_BC_O2_PROGS = $(addsuffix .bc.eqchecker.O2, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3_PROGS = $(addsuffix .bc.eqchecker.O3, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3cg_PROGS = $(addsuffix .bc.eqchecker.O3.cg, $(PROGS_EQCHECKER))

EQCHECKER_I386_GCC_O0_PROGS = $(addsuffix .gcc.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O2_PROGS = $(addsuffix .gcc.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O3_PROGS = $(addsuffix .$(GCC_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_CLANG_O0_PROGS = $(addsuffix .clang.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O2_PROGS = $(addsuffix .clang.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O3_PROGS = $(addsuffix .$(CLANG_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_ICC_O0_PROGS = $(addsuffix .icc.eqchecker.O0.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O2_PROGS = $(addsuffix .icc.eqchecker.O2.i386, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O3_PROGS = $(addsuffix .$(ICC_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_CCOMP_O2_PROGS = $(addsuffix .ccomp.eqchecker.O2.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_PROGS = \
  $(EQCHECKER_I386_CLANG_O0_PROGS) \
  $(EQCHECKER_I386_CLANG_O3_PROGS) \
  $(EQCHECKER_I386_GCC_O0_PROGS) \
  $(EQCHECKER_I386_GCC_O3_PROGS) \
  #$(EQCHECKER_I386_ICC_O0_PROGS) \
  #$(EQCHECKER_I386_ICC_O3_PROGS) \
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
	bash $(VPATH)/gentest.sh $(RUN)

runtest:
	bash $(VPATH)/runtest.sh $(RUN)

.DEFAULT_GOAL := all

.PHONY: all clean gentest runtest
