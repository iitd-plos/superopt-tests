include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = fib $(UNROLL1_PROGS)
UNROLL1_CLANG = alloca_linked_list $(UNROLL1_PROGS)
UNROLL2_GCC = alloca_linked_list
UNROLL2_CLANG = fib
EXTRA_FLAGS := --dyn-debug=dump_final_invariants --smt-query-timeout 300 --global-timeout 16000 --disable-ssa-cloning

UNROLL1_PROGS := \
                 rodata                            \
                 addr_taken_simple            		 \
                 addr_taken_array             		 \
                 addr_taken_array_in_loop     		 \
                 addr_taken_conditional       		 \
                 alloca_simple                		 \
                 alloca_conditional           		 \
                 minprintf                    		 \
                 variadic_acyclic             		 \
                 variadic_with_loop           		 \
                 vla_simple_loop              		 \
                 vla_conditional_use          		 \
                 vla_in_loop                       \
                 vla_in_loop_conditional_continue  \
                 vla_in_loop_conditional_exit      \
                 vla_2_single_loop                 \
                 vla_3_single_loop                 \
                 vla_1_inside_loop            		 \
                 vla_2_inside_loop            		 \
                 alloca_malloc_switch              \
                 #vla_midway_decl              	\
                 ## vla_2_nested_loops           \
                 ## vla_2d                       \
                 #minscanf                      # gcc eqgen fails
                 #arg_addr_taken               # eqgen fails

PROGS_EQCHECKER := $(UNROLL1_GCC) $(UNROLL1_CLANG) $(UNROLL2_GCC) $(UNROLL2_CLANG)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
