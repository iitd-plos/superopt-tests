include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/paper_ex

PROGS_PREFIX := paper_ex
export PROGS_PREFIX
PROGS_EQCHECKER := $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
