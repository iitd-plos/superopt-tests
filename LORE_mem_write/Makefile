include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/LORE_mem_write

PROGS_EQCHECKER_SRC_DST := corr_mutations
PROGS_EQCHECKER_COMPILER := oopsla_tests oopsla_tests_8uf
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_SRC_DST)) $(addsuffix _dst, $(PROGS_SRC_DST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
