include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_prior_work

EXTRA_FLAGS := --global-timeout 7200

UNROLL8_GCC    := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # s176 is non-bisimilar (outer looop and inner loop collapse twice)
UNROLL64_CLANG := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # should pass: s176 (high-mem), s162 (query-timeout)
UNROLL8_ICC    := s000 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s251 s3251 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # were passing earlier: s000, s121, s1221, s1251 (query-timeout), s1351, s162 (query-timeout), s173, s176, s2244, s251, s3251 (query timeout), s452, s453, sum1d, vdotr, vpv, vpvpv, vpvts, vtvtv, vtv, vtvtv
			            # s1112 loop reversal with mem write, s243 loop splitting (can do similar function without mem write)

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
