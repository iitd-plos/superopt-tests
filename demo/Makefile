include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/demo

UNROLL1_SRCDST := nestedLoop ifswitch
UNROLL4_SRCDST := loopSplitting
UNROLL8_SRCDST := strlen
PROGS_EQCHECKER := $(addsuffix _src, $(SRC_DST)) $(addsuffix _dst, $(SRC_DST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
