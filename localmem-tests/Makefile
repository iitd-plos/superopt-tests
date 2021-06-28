include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := '--dyn-debug=stats --smt-query-timeout 1200 --global-timeout 100000'

PROGS_EQCHECKER_COMPILER := paper_addr_taken             \
                            paper_alloca                 \
                            paper_alloca_linked_list     \
                            paper_alloca_malloc_switch   \
                            paper_conditional_use        \
                            paper_minprintf              \
                            paper_minscanf               \
                            paper_variadic               \
                            paper_vla_1                  \
                            paper_vla_2                  \
                            paper_vla_2d                 \

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
