include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/demo

UNROLL1_GCC := sum1d \
               sum_positive \
               sum2d \
               kernel_mvt \
               # s441 -- incomplete CG
UNROLL1_SRCDST := nestedLoop \
                  ifswitch \
                  inequiv_1 \
                  inequiv_2
UNROLL4_SRCDST := bitflip \
                  # loopSplitting -- times out
UNROLL8_SRCDST := strlen

EXTRA_FLAGS := '--smt-query-timeout 600'

PROGS_EQCHECKER_SRCDST := $(UNROLL1_SRCDST) $(UNROLL4_SRCDST) $(UNROLL8_SRCDST)
PROGS_EQCHECKER_COMPILER := $(UNROLL1_GCC)
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_EQCHECKER_SRCDST)) $(addsuffix _dst, $(PROGS_EQCHECKER_SRCDST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
