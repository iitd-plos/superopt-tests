include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_new_locals
EXTRA_FLAGS := '--dyn-debug=stats --smt-query-timeout 1200 --global-timeout 100000 '

UNROLL64_GCC := s111 s1111 s113 s119 s124 s125 s128 s131 s132 s1421 s174 s2233 s311 s3111 s319 s421 s423 s441 s443 s471 va 

UNROLL64_CLANG := s1119 s116 s119 s124 s125 s1279 s131 s132 s171 s252 s254 s271 s2711 s2712 s273 s311 s319 s352 va
# CLANG PROGS THAT SHOULD PASS AFTER CORREL ALGO UPDATE -- s423, s421 (both s421 and s423 same issue), s1421 (non zero bv rank), s174, s3111, s471

UNROLL64_ICC := s119 s124 s125 s1279 s128 s132 s253 s254 s271 s2711 s2712 s272 s274 s276 s293 s311 s319 s4115 s441 s443 va vif
# ICC PROGS NOT PASSING AFTER VERSION CHANGE -- vbor (due to path exprs), s2710, s442, s3111 s131, s1111, s423(should pass), s113, s273, s114 (should pass), s1421(should pass), s1161, s174(should pass), s1213, s421 (should pass), s1115 (Query timeout  - Should pass),

PROGS_EQCHECKER_COMPILER := s111 s1111 s1115 s1119 s113 s114 s116 s1161 s119 s1213 s124 s125 s1279 s128 s131 s132 s1421 s171 s174 s2233 s252 s253 s254 s271 s2710 s2711 s2712 s272 s273 s274 s276 s293 s311 s3111 s317 s319 s331 s352 s4115 s421 s423 s441 s442 s443 s471 va vbor vif
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)
#

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

C_STD = gnu11
include $(SRCDIR)/Makefile.template
