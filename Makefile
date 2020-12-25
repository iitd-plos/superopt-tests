SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
#EQCHECK_TARGETS := bzip2 semalign reve ctests soundness #bzip2_minimal_changes tsvc
CODEGEN_TARGETS := compcert-tests
OOELALA_TARGETS := ooelala-tests
UNITTEST_TARGETS := unit-tests
TSVC_PRIOR_TARGETS := TSVC_prior_work
TSVC_NEW_TARGETS := TSVC_new
LORE_MEM_TARGETS := LORE_mem_write
LORE_NOMEM_TARGETS := LORE_no_mem_write
MICRO_TARGETS := micro
DIETLIBC_TARGET := dietlibc
PAPER_EX_TARGET := paper_ex
EQCHECK_TARGETS := $(PAPER_EX_TARGET) $(MICRO_TARGETS) $(TSVC_PRIOR_TARGETS) $(TSVC_NEW_TARGETS) $(LORE_MEM_TARGETS) $(LORE_NOMEM_TARGETS) $(DIETLIBC_TARGET)
TARGETS := $(EQCHECK_TARGETS) #$(OOELALA_TARGETS) # $(CODEGEN_TARGETS)
#TARGETS := $(EQCHECK_TARGETS) $(CODEGEN_TARGETS) $(OOELALA_TARGETS) $(OOPSLA_TARGETS) $(UNITTEST_TARGETS)
MAKEFILES := $(addsuffix /Makefile,$(TARGETS))
BUILD_MAKEFILES := $(addprefix $(BUILDDIR)/,$(MAKEFILES))

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

$(TARGETS):
	mkdir -p $(BUILDDIR)/$@
	cp $@/Makefile -t $(BUILDDIR)/$@
	$(MAKE) -C $(BUILDDIR)/$@

eqtest_x64 eqtest_i386: eqtest_%: $(BUILD_MAKEFILES)
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 $@ || exit;)
	true > $(BUILDDIR)/$@
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/$@ ]] && cat $(BUILDDIR)/$(t)/$@ >> $(BUILDDIR)/$@ || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/$@

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


.PHONY: gentest runtest unittest

.PHONY: all clean distclean $(TARGETS) gen_oopsla_test run_oopsla_test_bfs run_oopsla_test_dfs run_oopsla_tsvc_prior_dfs run_oopsla_tsvc_prior_bfs run_oopsla_tsvc_new_bfs run_oopsla_tsvc_new_dfs run_oopsla_lore_mem_bfs run_oopsla_lore_mem_dfs run_oopsla_lore_nomem_bfs run_oopsla_lore_nomem_dfs run_dietlibc run_paper_ex
