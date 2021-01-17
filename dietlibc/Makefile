include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/dietlibc

PROGS :=
PROGS_PREFIX := memccpy      \
                memchr       \
                memrchr      \

export PROGS
export PROGS_PREFIX

PROGS_EQCHECKER := $(addsuffix _src, $(PROGS_PREFIX)) $(addsuffix _dst, $(PROGS_PREFIX)) $(PROGS)

# flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS) $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
