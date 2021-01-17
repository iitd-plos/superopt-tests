include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)

PROGS_EQCHECKER_COMPILER := vla \
														variadic \
                            minprintf \
                            dprintf \
                            addr_taken \
                            alloca \
				                    glob \
				                    if_nameindex \
				                    rx \
				                    sha256crypt \
				                    struct_vla \
				                    argp-help \
				                    ifaddrs \
				                    poll

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
