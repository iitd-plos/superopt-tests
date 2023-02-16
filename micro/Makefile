include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

PROGS := fptrunc fpbinary fptoui fbinary flbinary \
         fcall10 fcall10_with_memaccess \
         fcall_taking_locals \
         ftmap_1 \
         ftmap_2 \
         ftmap_3 \
         ftmap_4 \
         rodata_simple \
         load_store_elim_simple \
         loop_hoisting \
         # load_store_elim_cmove # needs "anticipated-cmove expressions"
         #ddec arg_passing fpadd  fcall100 fcall100_with_memaccess \
         #fpext : TOO SLOW

EXTRA_FLAGS :=

UNROLL8_GCC := $(PROGS) \
               # load_store_elim_conditional not passing in GCC!
UNROLL16_CLANG := $(PROGS) \
                  load_store_elim_conditional

# compiler flags
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
