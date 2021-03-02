include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/localmem-tests

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)

PROGS_EQCHECKER_COMPILER := vla \
         										minprintf \
         										dprintf \
         										addr_taken \
         										alloca

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

include $(SRCDIR)/Makefile.template
