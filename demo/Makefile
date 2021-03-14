include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/demo

UNROLL4_GCC := kernel_mvt # s441 -- incomplete CG
UNROLL1_SRCDST := nestedLoop ifswitch inequiv_1 inequiv_2
UNROLL4_SRCDST := bitflip
#UNROLL4_SRCDST := loopSplitting -- times out
#UNROLL8_SRCDST := strlen -- incomplete CG

EXTRA_FLAGS := '--disable_loop_path_exprs'

PROGS_EQCHECKER_COMPILER := $(UNROLL4_GCC)
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(SRC_DST)) $(addsuffix _dst, $(SRC_DST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
