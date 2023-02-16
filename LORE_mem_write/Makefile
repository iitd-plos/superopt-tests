include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/LORE_mem_write

EXTRA_FLAGS := --global-timeout 7200 --max-address-space-size-gb 16

UNROLL4_GCC := ex101 ex102 ex103 ex104 ex105 ex106 ex107 ex108 # should pass: ex107 (query-timeout)
UNROLL8_GCC := ex106u ex107u # should pass: ex107u (query-timeout)

UNROLL16_CLANG := ex101 ex102 ex103 ex104 ex105 ex108 # should pass: ex103 (???), ex108 (query-timeout)
                  # not tested: ex106 ex107

UNROLL8_SRCDST := ex109 ex109_8 ex1010 ex1011 # should pass: ex1011 (???)

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
