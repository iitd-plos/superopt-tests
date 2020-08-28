include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/TSVC_new

PROGS_EQCHECKER := s111 s1111 s1115 s1119 s113 s114 s116 s1161 s119 s1213 s124 s125 s1279 s128 s131 s132 s1421 s171 s174 s2233 s252 s253 s254 s271 s2710 s2711 s2712 s272 s273 s274 s276 s293 s311 s3111 s317 s319 s331 s352 s4115 s421 s423 s441 s442 s443 s471 va vbor vif

ICC_COMPILER_DEFINE := -Dicc_compiler

# compiler flags
GCC_I386_EQCHECKER_FLAGS= $(GCC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS)
CLANG_I386_EQCHECKER_FLAGS= $(CLANG_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS)
ICC_I386_EQCHECKER_FLAGS= $(ICC_I386_EQCHECKER_FLAGS_COMMON) $(VEC_FLAGS) $(ICC_COMPILER_DEFINE)

# define target variables

BC_O0_SUFFIX := bc.eqchecker.O0
GCC_O3_SUFFIX := gcc.eqchecker.O3.i386.s
CLANG_O3_SUFFIX := clang.eqchecker.O3.i386.s
ICC_O3_SUFFIX := icc.eqchecker.O3.i386.s

# make available to gentest.sh and runtest.sh
export BC_O0_SUFFIX
export GCC_O3_SUFFIX
export CLANG_O3_SUFFIX
export ICC_O3_SUFFIX

EQCHECKER_BC_O0_PROGS = $(addsuffix .$(BC_O0_SUFFIX), $(PROGS_EQCHECKER))
EQCHECKER_BC_O2_PROGS = $(addsuffix .bc.eqchecker.O2, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3_PROGS = $(addsuffix .bc.eqchecker.O3, $(PROGS_EQCHECKER))
EQCHECKER_BC_O3cg_PROGS = $(addsuffix .bc.eqchecker.O3.cg, $(PROGS_EQCHECKER))

EQCHECKER_I386_GCC_O0_PROGS = $(addsuffix .gcc.eqchecker.O0.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O2_PROGS = $(addsuffix .gcc.eqchecker.O2.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_GCC_O3_PROGS = $(addsuffix .$(GCC_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_CLANG_O0_PROGS = $(addsuffix .clang.eqchecker.O0.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O2_PROGS = $(addsuffix .clang.eqchecker.O2.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O3_PROGS = $(addsuffix .$(CLANG_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_ICC_O0_PROGS = $(addsuffix .icc.eqchecker.O0.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O2_PROGS = $(addsuffix .icc.eqchecker.O2.i386.s, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O3_PROGS = $(addsuffix .$(ICC_O3_SUFFIX), $(PROGS_EQCHECKER))

EQCHECKER_I386_CCOMP_O2_PROGS = $(addsuffix .ccomp.eqchecker.O2.i386, $(PROGS_EQCHECKER))

EQCHECKER_I386_GCC_O3_XML_FILES = $(addsuffix .gcc.O3.xml, $(PROGS_EQCHECKER))
EQCHECKER_I386_CLANG_O3_XML_FILES = $(addsuffix .clang.O3.xml, $(PROGS_EQCHECKER))
EQCHECKER_I386_ICC_O3_XML_FILES = $(addsuffix .icc.O3.xml, $(PROGS_EQCHECKER))



EQCHECKER_I386_PROGS = \
  $(EQCHECKER_I386_GCC_O0_PROGS) \
  $(EQCHECKER_I386_GCC_O3_PROGS) \
  $(EQCHECKER_I386_CLANG_O0_PROGS) \
  $(EQCHECKER_I386_CLANG_O3_PROGS) \
  #$(EQCHECKER_I386_ICC_O0_PROGS) \
  #$(EQCHECKER_I386_ICC_O3_PROGS)
  #$(EQCHECKER_I386_CCOMP_O2_PROGS) \

LLVM_PROGS     = $(EQCHECKER_BC_O0_PROGS) $(EQCHECKER_BC_O3_PROGS)
LLVM_PROGS_ASM = $(addsuffix .ll, $(LLVM_PROGS))

XML_FILES = \
  $(EQCHECKER_I386_GCC_O3_XML_FILES) \
  $(EQCHECKER_I386_CLANG_O3_XML_FILES)


ALL_PROGS = $(EQCHECKER_I386_PROGS) $(LLVM_PROGS) $(LLVM_PROGS_ASM) $(XML_FILES)

# targets

all: $(ALL_PROGS)
clean:
	# delete all except icc binaries
	rm -f *.o *.tmp $(EQCHECKER_I386_CLANG_O0_PROGS) $(EQCHECKER_I386_CLANG_O3_PROGS) $(EQCHECKER_I386_GCC_O0_PROGS) $(EQCHECKER_I386_GCC_O3_PROGS) $(LLVM_PROGS) $(LLVM_PROGS_ASM) #$(ALL_PROGS)

gentest:
	bash $(VPATH)/gentest.sh $(RUN)

runtest:
	cp $(VPATH)/*tsvc_funcs* -t .
	bash $(VPATH)/runtest.sh $(RUN)

.DEFAULT_GOAL := all

.PHONY: all clean gentest runtest
