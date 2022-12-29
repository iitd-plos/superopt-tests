include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_prior_work

#UNROLL2_CLANG := s122 s112
#UNROLL2_ICC := s122 s112 #s1112 loop reversal with mem write, s243 loop splitting (can do similar function without mem write)
#
#UNROLL16_CLANG := s000 s1112 s121 s1221 s1251 s127 s1281 s1351 s162 s173 s2244 s243 s251 s3251 s351 s452 s453 vpvpv vpvts vpvtv vtv vtvtv sum1d vdotr

# UNROLL16_CLANG := s122 s112 s000 s1112 s121 s1221 s1251 s127 s1281 s1351 s162 s173 s2244 s243 s251 s3251 s351 s452 s453 vpvpv vpvts vpvtv vtv vtvtv sum1d vdotr
# UNROLL8_ICC := s122 s112

EXTRA_FLAGS :=

UNROLL8_GCC := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # s176 is non-bisimilar (outer looop and inner loop collapse twice)
UNROLL64_CLANG := s000 s1112 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s243 s251 s3251 s351 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # probably not passing XXX s176, s3251(non zero bv rank)
UNROLL8_ICC := s000 s112 s121 s122 s1221 s1251 s127 s1281 s1351 s162 s173 s176 s2244 s251 s3251 s452 s453 sum1d vdotr vpv vpvpv vpvts vpvtv vtv vtvtv # probably not passing XXX s176, s121 (should pass), s162, s1221(should pass), vtvtv, s3251 (Query timeout - Should pass)

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
