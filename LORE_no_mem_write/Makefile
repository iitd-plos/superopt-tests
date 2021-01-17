include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/LORE_no_mem_write

UNROLL4_GCC := ex1 ex2 ex3 ex4 ex5 ex6 ex8 ex9 ex10 ex11 ex12 ex13 # require --disable_residual_loop_unroll
UNROLL8_GCC := ex2 ex3 ex4 ex5 ex6 # require --disable_residual_loop_unroll
UNROLL8_GCC += ex13 # require --disable_residual_loop_unroll --disable_loop_path_exprs
UNROLL8_CLANG := ex1 ex8 ex9 ex10 ex11 ex12 # require --disable_residual_loop_unroll
UNROLL8_CLANG += ex7 # require --disable_residual_loop_unroll --disable_loop_path_exprs

UNROLL4_SRCDST := ex14 ex15 ex16
UNROLL8_SRCDST := ex15_8
UNROLL16_SRCDST := ex16 ex17 #dst was compiled using clang in the original test

PROGS_EQCHECKER_SRC_DST := ex14 ex15 ex15_8 ex16 ex17
PROGS_EQCHECKER_COMPILER := ex1 ex2 ex2u ex3 ex3u ex4 ex4u ex5 ex5u ex6 ex6u ex7 ex8 ex9 ex11 ex12 ex13 ex13u
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX))
#PROGS_EQCHECKER_ICC := oopsla_tests_icc $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
