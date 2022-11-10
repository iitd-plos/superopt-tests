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

EXTRA_FLAGS := --enumerate-src-bbl-ends --smt-query-timeout 300 --global-timeout 36000

PROGS_EQCHECKER := $(UNROLL1_CLANG)

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
