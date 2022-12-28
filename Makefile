SHELL := /bin/bash

include config-host.mak      # BUILDDIR
include $(SRCDIR)/Make.conf                  # compiler paths and flags

# add new dirs' targets here
CODEGEN_TARGETS := compcert-tests
OOELALA_TARGETS := ooelala-tests
UNITTEST_TARGETS := unit-tests
BLR_DEMO_TARGETS := BLR_demo
TSVC_PRIOR_LOCALS_TARGETS := TSVC_prior_work_locals
TSVC_NEW_LOCALS_TARGETS := TSVC_new_locals
POPL_PAPER_EX_TARGETS := popl_paper_ex
LORE_MEM_TARGETS := LORE_mem_write
LORE_NOMEM_TARGETS := LORE_no_mem_write
DIETLIBC_TARGET := dietlibc
PAPER_EX_TARGET := paper_ex
LOCALMEM_TARGETS := localmem-tests
MALLOC_TARGETS := malloc-tests cpp
OTHER_TARGETS := bzip2 demo ctests # soundness # reve 
TSVC_POPL_TARGETS := TSVC_popl
SPEC_TARGETS := spec17
FP_TARGETS := fp

VECTORIZATION_TARGETS := TSVC_prior_work TSVC_new LORE_mem_write LORE_no_mem_write
LOCALS_TARGETS := localmem-tests TSVC_prior_work_locals TSVC_prior_work_globals bzip2_locals

EQCHECK_TARGETS :=  $(LOCALS_TARGETS) $(LORE_MEM_TARGETS) $(MICRO_TARGETS) $(TSVC_PRIOR_TARGETS) $(TSVC_NEW_TARGETS) # $(LORE_MEM_TARGETS) $(LORE_NOMEM_TARGETS) $(PAPER_EX_TARGET) $(DIETLIBC_TARGET) $(OTHER_TARGETS) $(TSVC_PRIOR_LOCALS_TARGETS) $(TSVC_NEW_LOCALS_TARGETS) $(POPL_PAPER_EX_TARGETS) $(TSVC_POPL_TARGETS) $(LOCALMEM_TARGETS) $(MALLOC_TARGETS) $(FP_TARGETS)
EQCHECK_TARGETS :=  $(LOCALS_TARGETS) $(VECTORIZATION_TARGETS) micro

EQCHECK_TARGETS_i386 := $(EQCHECK_TARGETS)
EQCHECK_TARGETS_x64 := $(EQCHECK_TARGETS)
EQCHECK_TARGETS_ll := llvm-tests
#TARGETS := $(EQCHECK_TARGETS_i386) $(EQCHECK_TARGETS_x64) $(EQCHECK_TARGETS_ll) #$(OOELALA_TARGETS) # $(CODEGEN_TARGETS)
TARGETS := $(EQCHECK_TARGETS_i386)
MAKEFILES := $(addsuffix /Makefile,$(TARGETS))
BUILD_MAKEFILES := $(addprefix $(BUILDDIR)/,$(MAKEFILES))

IDENTIFY_DURABLES_FILES := cpp/linked_list.cpp cpp/binary_search_tree.cpp cpp/binary_search_tree_iter.cpp malloc-tests/linked_list.c malloc-tests/binary_search_tree.c malloc-tests/binary_search_tree_iter.c malloc-tests/mylist.c malloc-tests/rbtree.c malloc-tests/hash.c


export SUPEROPT_PROJECT_DIR
export SUPEROPT_INSTALL_DIR

PARALLEL_LOAD_PERCENT ?= 33
PARALLEL_LOAD_PERCENT_DFS ?= 30

# rules

all: $(TARGETS)

clean:
	$(foreach t,$(TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) clean;)
	find . -name *.bc | xargs rm -f
	find . -name *.cg.ll | xargs rm -f
	find . -name "*.etfg" | xargs rm -f
	find . -name *.tmp | xargs rm -f
	find . -name *.log | xargs rm -f
	find . -name cscope.out | xargs rm -f
	find . -name core | xargs rm -f

distclean: clean
	rm -rf config-host.mak $(BUILDDIR)

$(BUILDDIR)/%:
	mkdir -p $@

$(BUILD_MAKEFILES): $(BUILDDIR)/%/Makefile: %/Makefile $(BUILDDIR)/%
	cp $< $@

$(TARGETS) $(SPEC_TARGETS)::
	mkdir -p $(BUILDDIR)/$@
	cp $@/Makefile -t $(BUILDDIR)/$@
	$(MAKE) -C $(BUILDDIR)/$@

ack-progs::
	$(MAKE) -C $(BUILDDIR)/localmem-tests $@

eqtest_x64: ARCH=x64
eqtest_i386: ARCH=i386
eqtest_ll: ARCH=ll

eqtest_x64 eqtest_i386 eqtest_ll: eqtest_%: $(BUILD_MAKEFILES)
	$(foreach t,$(EQCHECK_TARGETS_$(ARCH)),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 $@ || exit;)
	true > $(BUILDDIR)/$@
	$(foreach t,$(EQCHECK_TARGETS_$(ARCH)), [[ -f $(BUILDDIR)/$(t)/$@ ]] && cat $(BUILDDIR)/$(t)/$@ >> $(BUILDDIR)/$@ || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/$@

ack-compiler::
	rm -rf $(BUILDDIR)/ack-compiler
	git clone https://github.com/compilerai/ack-compiler $(BUILDDIR)/ack-compiler
	make -C $(BUILDDIR)/ack-compiler PREFIX=$(BUILDDIR)/ack-compiler-install
	make -C $(BUILDDIR)/ack-compiler install

#runtest:
#	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands
#	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands ]] && cat $(BUILDDIR)/$(t)/chaperon_commands >> $(BUILDDIR)/all_chaperon_commands || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands

#run_oopsla_test_bfs:
#	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_oopsla
#	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_oopsla || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_oopsla

typecheck_test:
	$(SUPEROPT_PROJECT_DIR)/superopt/build/etfg_i386/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) codegen_test || exit;)

ooelala_test:
	$(foreach t,$(OOELALA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) ooelala_test || exit;)

semanticaa_test:
	$(MAKE) -C $(BUILDDIR)/bzip2 semanticaa_test || exit

#
#run_oopsla_test_dfs:
#	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_oopsla
#	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_oopsla || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT_DFS)%" < $(BUILDDIR)/all_chaperon_commands_oopsla
#
#run_oopsla_tsvc_prior_dfs:
#	$(foreach t,$(TSVC_PRIOR_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_tsvc_prior
#	$(foreach t,$(TSVC_PRIOR_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_prior || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT_DFS)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_prior
#
#run_oopsla_tsvc_prior_bfs:
#	$(foreach t,$(TSVC_PRIOR_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_tsvc_prior
#	$(foreach t,$(TSVC_PRIOR_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_prior || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_prior

#run_oopsla_tsvc_new_bfs:
#	$(foreach t,$(TSVC_NEW_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_tsvc_new
#	$(foreach t,$(TSVC_NEW_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_new || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_new
#
#run_oopsla_tsvc_new_dfs:
#	$(foreach t,$(TSVC_NEW_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_tsvc_new
#	$(foreach t,$(TSVC_NEW_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_new || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT_DFS)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_new
#
#run_oopsla_lore_mem_bfs:
#	$(foreach t,$(LORE_MEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_lore_mem
#	$(foreach t,$(LORE_MEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_lore_mem || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_mem
#
#run_oopsla_lore_mem_dfs:
#	$(foreach t,$(LORE_MEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_lore_mem
#	$(foreach t,$(LORE_MEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_lore_mem || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT_DFS)%" < $(BUILDDIR)/all_chaperon_commands_lore_mem
#
#run_oopsla_lore_nomem_bfs:
#	$(foreach t,$(LORE_NOMEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_lore_nomem
#	$(foreach t,$(LORE_NOMEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_lore_nomem || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_nomem
#
#run_oopsla_lore_nomem_dfs:
#	$(foreach t,$(LORE_NOMEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
#	true > $(BUILDDIR)/all_chaperon_commands_lore_nomem
#	$(foreach t,$(LORE_NOMEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_lore_nomem || exit;)
#	parallel --load "$(PARALLEL_LOAD_PERCENT_DFS)%" < $(BUILDDIR)/all_chaperon_commands_lore_nomem

#run_dietlibc:
#	$(MAKE) -C $(BUILDDIR)/$(DIETLIBC_TARGET) eqtest
#	#$(MAKE) -C $(BUILDDIR)/$(DIETLIBC_TARGET) runtest

run_paper_ex:
	$(MAKE) -C $(BUILDDIR)/$(PAPER_EX_TARGET) eqtest
	#$(MAKE) -C $(BUILDDIR)/$(PAPER_EX_TARGET) runtest

specmount::
	-sudo mount -t iso9660 -o ro,exec,loop $(HOME)/tars/cpu2017-1_0_5.iso $(SPEC_MOUNT)

specbuild: $(SPEC_TARGETS)

umount::
	sudo umount $(SPEC_MOUNT)

specclean::
	rm -f $(BUILD)/spec17/build_done

identify_durables::
	python $(SUPEROPT_PROJECT_DIR)/superopt/utils/identify_durables.py --max-call-context-depth 4 $(IDENTIFY_DURABLES_FILES)

.PHONY: runtest unittest

.PHONY: all clean distclean $(TARGETS) gen_oopsla_test run_oopsla_test_bfs run_oopsla_test_dfs run_oopsla_tsvc_prior_dfs run_oopsla_tsvc_prior_bfs run_oopsla_tsvc_new_bfs run_oopsla_tsvc_new_dfs run_oopsla_lore_mem_bfs run_oopsla_lore_mem_dfs run_oopsla_lore_nomem_bfs run_oopsla_lore_nomem_dfs run_dietlibc run_paper_ex
