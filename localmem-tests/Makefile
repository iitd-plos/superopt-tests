include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := '--dyn-debug=stats --smt-query-timeout 1200 --global-timeout 100000'

PROGS_EQCHECKER_COMPILER := vla_1 \
                            vla_2 \
														variadic \
                            minprintf \
                            minscanf \
                            dprintf \
                            addr_taken \
                            alloca \
                            struct_vla \
                            # vlax # multiple query time outs
                            # rx # too big
                            # sha256crypt # harvest takes forever
                            # ifaddrs # eqgen takes forever
                            # poll # eqgen takes forever
                            # glob \
                            # if_nameindex \
                            # argp-help \

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
