include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/bzip2_locals

UNROLL1 := bzip2_locals \
           recvDecodingTables \
           generateMTFValues \
           undoReversibleTransformation_fast \
           undoReversibleTransformation_small \
           hbMakeCodeLengths \
           getAndMoveToFrontDecode \
           sortIt \
           qSort3 \

UNROLL1_CLANG = $(UNROLL1)

EXTRA_FLAGS := --smt-query-timeout 300 --global-timeout 36000

# compiler flags
GCC_EQCHECKER_FLAGS_EXTRA= $(GCC_EQCHECKER_NOUNROLL_FLAGS)
CLANG_EQCHECKER_FLAGS_EXTRA= $(CLANG_EQCHECKER_NOUNROLL_FLAGS)
ICC_EQCHECKER_FLAGS_EXTRA= $(ICC_EQCHECKER_NOUNROLL_FLAGS)

include $(SRCDIR)/Makefile.template
