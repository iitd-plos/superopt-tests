include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/paper_ex

UNROLL8_GCC := s000
UNROLL16_CLANG := s000
PROGS_EQCHECKER := s000

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
