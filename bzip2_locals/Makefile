include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/bzip2_locals

PROGS_EQCHECKER_COMPILER := bzip2_locals \
  													recvDecodingTables \
                            generateMTFValues \
                            undoReversibleTransformation_fast \
                            undoReversibleTransformation_small \
                            hbMakeCodeLengths \
                            getAndMoveToFrontDecode \
                            qSort3 \

#UNROLL1_GCC = $(PROGS_EQCHECKER_COMPILER)
UNROLL1_CLANG = $(PROGS_EQCHECKER_COMPILER)

EXTRA_FLAGS := --enumerate-src-bbl-ends

PROGS_EQCHECKER := $(PROGS_EQCHECKER_COMPILER)

# flags
GCC_I386_EQCHECKER_FLAGS= $(GCC_I386_EQCHECKER_FLAGS_COMMON) $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_I386_EQCHECKER_FLAGS= $(CLANG_I386_EQCHECKER_FLAGS_COMMON) $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_I386_EQCHECKER_FLAGS= $(ICC_I386_EQCHECKER_FLAGS_COMMON) $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
