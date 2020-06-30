include ../config.mak                        # paths
include $(SRCDIR)/Make.conf                  # compiler paths and flags
include $(SRCDIR)/Makefile.common            # build rules

OOELALA = $(CLANG_I386) --dyn_debug=disableSemanticAA -Xclang -load -Xclang $(MYLLVM_DIR)/lib/UnsequencedAliasVisitor.so -Xclang -add-plugin -Xclang unseq
TIME=/usr/bin/time

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/ooelala-tests

PROGS=array_min_max nested_loop

CLANG_PROGS = $(addsuffix .clang, $(PROGS))
ICC_PROGS = $(addsuffix .icc, $(PROGS))
GCC_PROGS = $(addsuffix .gcc, $(PROGS))
OOELALA_PROGS = $(addsuffix .ooelala, $(PROGS))

EXECS = $(CLANG_PROGS) $(ICC_PROGS) $(GCC_PROGS) $(OOELALA_PROGS)

all: $(EXECS)

.DEFAULT_GOAL := all

.PHONY: all ooelala_test

ooelala_test: array_min_max-run nested_loop-run

%.gcc: %.c %_main.c
	echo "Building $@"
	$(GCC_I386) -Ofast $^ -o $@

%.clang: %.c %_main.c
	echo "Building $@"
	$(CLANG_I386) -Ofast $^ -o $@

%.icc: %.c %_main.c
	echo "Building $@"
	$(ICC_I386) -Ofast $^ -o $@

%.ooelala: %.c %_main.c
	echo "Building $@"
	$(OOELALA) -Ofast $^ -o $@

%-run:
	$(eval test=$(patsubst %-run, %, $@))
	echo "Running $(test)"
	$(TIME) -f "clang : %U" ./$(test).clang
	$(TIME) -f "gcc : %U" ./$(test).gcc
	$(TIME) -f "icc : %U" ./$(test).icc
	$(TIME) -f "ooelala : %U" ./$(test).ooelala

clean::
	rm -f *.gcc *.clang *.icc *.ooelala
