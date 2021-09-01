include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := '--dyn-debug=stats --smt-query-timeout 1200 --global-timeout 9000'

PROGS_EQCHECKER_COMPILER := \
  													addr_taken_simple            \
  													addr_taken_array             \
  													addr_taken_array_in_loop     \
  													addr_taken_conditional       \
  													alloca_simple                \
  													alloca_conditional           \
  													alloca_linked_list           \
  													minprintf                    \
  													minscanf                     \
  													variadic_acyclic             \
  													variadic_with_loop           \
  													vla_simple_loop              \
                            vla_in_loop                  \
                            vla_in_loop_simplified       \
  													vla_midway_decl              \
                            vla_conditional_use          \
                            vla_2_single_loop            \
                            ## vla_2_nested_loops           \
                            ## vla_2d                       \
  													## alloca_malloc_switch         \

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
