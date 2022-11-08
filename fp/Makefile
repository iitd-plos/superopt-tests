include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/fp

PROGS_EQCHECKER_COMPILER := fp1 fp1_d fp1_l fp2 fp2_d fp3 fp4 fpconst fpconst_d fpedge fpedge_d soundness
PROGS_EQCHECKER_SRCDST :=

EXTRA_FLAGS := #--dyn-debug=bvsolve_cache_debug=2

UNROLL8_GCC := $(PROGS_EQCHECKER_COMPILER)
UNROLL16_CLANG := $(PROGS_EQCHECKER_COMPILER)

UNROLL1_SRCDST := $(PROGS_EQCHECKER_SRCDST)

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_EQCHECKER_SRCDST)) $(addsuffix _dst, $(PROGS_EQCHECKER_SRCDST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) -msse2 -mfpmath=sse
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
