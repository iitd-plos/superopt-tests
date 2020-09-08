include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_prior_work

PROGS_EQCHECKER := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvtv vtv vtvtv vpvts

# compiler flags
GCC_I386_EQCHECKER_FLAGS= $(GCC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS)
CLANG_I386_EQCHECKER_FLAGS= $(CLANG_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS)
ICC_I386_EQCHECKER_FLAGS= $(ICC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
