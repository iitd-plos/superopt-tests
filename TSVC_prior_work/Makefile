include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_prior_work

PROGS_EQCHECKER_COMPILER := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvtv vtv vtvtv vpvts
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
