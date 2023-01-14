include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_popl
EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 1200 --global-timeout 100000

UNROLL8_GCC := s441 ex17 # ex12 
UNROLL16_CLANG := s441 ex17 # ex12 
# UNROLL64_ICC := paper_ex s441 ex12 ex15 ex17  

UNROLL1_GCC := ex15_dst ex15_8_dst

UNROLL8_SRCDST := ex15
UNROLL16_SRCDST := ex15_8

GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
