include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/LORE_no_mem_write

UNROLL4_GCC := ex1 ex2 ex3 ex4 ex5 ex6 ex8 ex9 ex10 ex11 ex12 ex13 # probably not passing: ex7
UNROLL8_GCC := ex2u ex3u ex4u ex5u ex6u ex13u
UNROLL8_CLANG := ex1 ex7 ex8 ex9 ex10 ex11 ex12
UNROLL4_ICC := ex7

UNROLL4_SRCDST := ex14 ex15 ex16
UNROLL8_SRCDST := ex15_8
UNROLL16_SRCDST := ex16 ex17 #dst was compiled using clang in the original test

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
