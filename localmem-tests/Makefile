include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)
EXTRA_FLAGS := '--dyn_debug=stats --smt-query-timeout 1200'

PROGS_EQCHECKER_COMPILER := vla_1 \
                            vla_2 \
                            vlax \
														variadic \
                            minprintf \
                            dprintf \
                            addr_taken \
                            alloca \
                            rx \
                            struct_vla \
                            # sha256crypt # harvest takes forever
                            # ifaddrs # eqgen takes forever
                            # poll # eqgen takes forever
                            # glob \
                            # if_nameindex \
                            # argp-help \

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
