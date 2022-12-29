include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

PROGS := fptrunc fpbinary fptoui fbinary flbinary fcall10 fcall10_with_memaccess \
	       rodata_simple \
	       load_store_elim_simple \
	       load_store_elim_cmove \
	       load_store_elim_conditional \
	       fcall_taking_locals #ddec arg_passing fpadd  fcall100 fcall100_with_memaccess
         #fpext : TOO SLOW

EXTRA_FLAGS := #--dyn-debug=bvsolve_cache_debug=2

UNROLL8_GCC := $(PROGS)
UNROLL16_CLANG := $(PROGS)

# compiler flags
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
