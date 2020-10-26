include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/micro

PROGS_EQCHECKER_COMPILER := \
         ddec \
         #vla \
         #arg_passing \
         #minprintf
         #lerner \

UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)

PROGS_EQCHECKER_SRC_DST := \
 	              #fpext \
                #fptrunc \
                #fpcmp \
                #fptoui \
                #basedon \
                #the following programs are non-bisimilar and so do not work currently
                #barthe \
                #loop_unswitching \
                #peeling \
                #soft_pipe \
                #splitting \
                #tiling
                ##lookuptable # reading from RODATA is not supported
PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER) $(addsuffix _src, $(PROGS_EQCHECKER_SRC_DST)) $(addsuffix _dst, $(PROGS_EQCHECKER_SRC_DST))

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(VEC_FLAGS)

include $(SRCDIR)/Makefile.template
