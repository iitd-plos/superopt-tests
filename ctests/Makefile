include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/ctests

UNROLL4_GCC := chomp \
	             fannkuch \
							 knucleotide \
				       sha1

UNROLL8_CLANG := chomp \
	               fannkuch \
								 knucleotide \
				         sha1

UNROLL1_PROGS := nsieve \
				         qsort \
				         #nsievebits \ # ext_rotate_left expr is generated which is not supported by solvers

EXTRA_FLAGS := '--global-timeout 7200'

PROGS_EQCHECKER_COMPILER := $(UNROLL1_PROGS) $(UNROLL8_CLANG) $(UNROLL4_GCC)
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) 

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
