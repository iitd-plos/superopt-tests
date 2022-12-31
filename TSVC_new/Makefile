include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_new

EXTRA_FLAGS := --global-timeout 7200

UNROLL8_GCC := s111 s1111 s113 s119 s124 s125 s128 s131 s132 s1421 s174 s2233 s311 s3111 s319 s421 s423 s441 s443 s471 va vbor # cannot pass: s1119 non-bisimilar, s2275 loop interchange, s231 loop interchange, s235 loop interchange, s317 non-linear invariant required, s331 non-linear invariant required, vbor SMT query timeout

UNROLL64_CLANG := s1119 s116 s119 s124 s125 s1279 s131 s132 s1421 s171 s174 s252 s254 s271 s2711 s2712 s273 s311 s3111 s319 s352 s421 s423 s471 va vbor vif # probably should pass XXX: s423, s421 (both s421 and s423 same issue), s1421 (non zero bv rank), s174, s3111, s471, vbor (SMT query timeout); cannot pass s1115 non-bisimilar, s2233 loop interchange, s317 non-linear invariant required, s3111: assert-fail in simplification (exceeds max iter count of 1024)

UNROLL64_ICC := s1111 s1115 s113 s114 s1161 s119 s1213 s124 s125 s1279 s128 s131 s132 s1421 s174 s253 s254 s271 s2710 s2711 s2712 s272 s273 s274 s276 s293 s311 s3111 s319 s4115 s421 s423 s441 s442 s443 va vbor vif # probably should pass XXX vbor (due to path exprs), s2710, s442, s3111 s131, s1111, s423(should pass), s113, s273, s114 (should pass), s1421(should pass), s1161, s174(should pass), s1213, s421 (should pass), s1115 (Query timeout  - Should pass),

ICC_COMPILER_DEFINE := -Dicc_compiler

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
