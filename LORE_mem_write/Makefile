include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/LORE_mem_write

UNROLL4_GCC := ex101 ex102 ex103 ex104 ex105 ex106 ex107 ex108 # require --disable_residual_loop_unroll
UNROLL8_GCC := ex106u #require --disable_residual_loop_unroll
UNROLL8_GCC += ex107u #require --disbale_loop_path_exprs --disable_residual_loop_unroll
UNROLL8_CLANG := ex101 ex102 ex103 ex104 ex105 ex108 # require --disable_residual_loop_unroll

UNROLL4_SRCDST := ex109 ex1010 ex1011
UNROLL8_SRCDST := ex109_8

PROGS_EQCHECKER_SRC_DST := ex109 ex109_8 ex1010 ex1011
PROGS_EQCHECKER_COMPILER := ex101 ex102 ex103 ex104 ex105 ex106 ex107 ex108 ex106u ex107u
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_SRC_DST)) $(addsuffix _dst, $(PROGS_SRC_DST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
