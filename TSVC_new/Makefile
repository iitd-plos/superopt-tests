include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_new

UNROLL4_GCC := s111 s1111 s113 s119 s124 s125 s128 s131 s132 s1421 s174 s2233 s311 s3111 s319 s421 s423 s441 s443 s471 va #s1119 non-bisimilar, s2275 loop interchange, s231 loop interchange, s235 loop interchange, s317 non-linear invariant required, s331 non-linear invariant required, vbor SMT query timeout

UNROLL16_CLANG := s1119 s116 s119 s131 s132 s1421 s171 s174 s252 s254 s271 s2711 s2712 s273 s311 s319 s352 s421 s423 s471 va vif # s1115 non-bisimilar, s2233 loop interchange, s317 non-linear invariant required, vbor SMT query timeout
UNROLL16_CLANG += s124 s125 s1279 s3111 # these require --disable_residual_loop_unroll --disable_loop_path_exprs flags

PROGS_EQCHECKER_COMPILER := s111 s1111 s1115 s1119 s113 s114 s116 s1161 s119 s1213 s124 s125 s1279 s128 s131 s132 s1421 s171 s174 s2233 s252 s253 s254 s271 s2710 s2711 s2712 s272 s273 s274 s276 s293 s311 s3111 s317 s319 s331 s352 s4115 s421 s423 s441 s442 s443 s471 va vbor vif
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

ICC_COMPILER_DEFINE := -Dicc_compiler

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
