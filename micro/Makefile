include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

EXTRA_FLAGS :=
PROGS_EQCHECKER_COMPILER := fptrunc fpbinary fptoui fbinary flbinary fcall10 fcall10_with_memaccess \
	                          rodata_simple \
	                          load_store_elim_simple \
	                          load_store_elim_cmove \
	                          load_store_elim_conditional \
	                          fcall_taking_locals #ddec arg_passing fpadd  fcall100 fcall100_with_memaccess
#fpext : TOO SLOW
PROGS_EQCHECKER_SRCDST :=

EXTRA_FLAGS := #--dyn-debug=bvsolve_cache_debug=2

UNROLL8_GCC := $(PROGS_EQCHECKER_COMPILER)
UNROLL16_CLANG := $(PROGS_EQCHECKER_COMPILER)

UNROLL1_SRCDST := $(PROGS_EQCHECKER_SRCDST)

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_EQCHECKER_SRCDST)) $(addsuffix _dst, $(PROGS_EQCHECKER_SRCDST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
