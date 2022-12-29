include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/dietlibc

UNROLL1 := memccpy  \
           memchr   \
           memrchr

UNROLL1_SRCDST := $(UNROLL1)

# flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
