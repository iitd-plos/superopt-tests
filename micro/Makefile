include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

PROGS_EQCHECKER_COMPILER := fptrunc fpbinary fptoui fbinary flbinary fcall10 fcall100 fcall10_with_memaccess fcall100_with_memaccess #ddec arg_passing fpadd
#fpext : TOO SLOW
PROGS_EQCHECKER_SRCDST :=

UNROLL8_GCC := $(PROGS_EQCHECKER_COMPILER)
UNROLL16_CLANG := $(PROGS_EQCHECKER_COMPILER)

UNROLL1_SRCDST := $(PROGS_EQCHECKER_SRCDST)

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_EQCHECKER_SRCDST)) $(addsuffix _dst, $(PROGS_EQCHECKER_SRCDST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
