include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/ctests

UNROLL1_PROGS := nsieve \
                 qsort  \
                 lists  \
                 #nsievebits \ # ext_rotate_left expr is generated which is not supported by solvers

UNROLL1_GCC   := $(UNROLL1_PROGS)
UNROLL1_CLANG := $(UNROLL1_PROGS)

UNROLL4_GCC := chomp        \
               fannkuch     \
               knucleotide  \
               sha1

UNROLL8_CLANG := chomp       \
                 fannkuch    \
                 knucleotide \
                 sha1

EXTRA_FLAGS := --global-timeout 7200

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
