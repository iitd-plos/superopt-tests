SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
EQCHECK_TARGETS := tsvc bzip2 semalign reve ctests micro soundness #bzip2_minimal_changes
TSVC_PRIOR_TARGETS := TSVC_prior_work
TSVC_NEW_TARGETS := TSVC_new
LORE_MEM_TARGETS := LORE_mem_write
LORE_NOMEM_TARGETS := LORE_no_mem_write
#OOPSLA_TARGETS := $(TSVC_PRIOR_TARGETS) $(TSVC_NEW_TARGETS) $(LORE_MEM_TARGETS) $(LORE_NOMEM_TARGETS)
OOPSLA_TARGETS := $(LORE_MEM_TARGETS) $(LORE_NOMEM_TARGETS)
CODEGEN_TARGETS := compcert-tests
OOELALA_TARGETS := ooelala-tests
TARGETS := $(EQCHECK_TARGETS) $(CODEGEN_TARGETS) $(OOELALA_TARGETS) $(OOPSLA_TARGETS)

PARALLEL_LOAD_PERCENT ?= 33

# rules

all: $(BUILDDIR) $(TARGETS)

clean:
	$(foreach t,$(TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) clean;)

distclean: clean
	rm -rf config-host.mak $(BUILDDIR)

$(BUILDDIR):
	mkdir -p $@

$(TARGETS):
	mkdir -p $(BUILDDIR)/$@
	cp $@/Makefile -t $(BUILDDIR)/$@
	$(MAKE) -C $(BUILDDIR)/$@

gentest:
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) gentest || exit;)
	true > $(BUILDDIR)/all_gentest_chaperon_commands
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/gentest_chaperon_commands ]] && cat $(BUILDDIR)/$(t)/gentest_chaperon_commands >> $(BUILDDIR)/all_gentest_chaperon_commands || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_gentest_chaperon_commands

runtest:
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands ]] && cat $(BUILDDIR)/$(t)/chaperon_commands >> $(BUILDDIR)/all_chaperon_commands || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands

gen_oopsla_test:
	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) gentest || exit;)
	true > $(BUILDDIR)/all_gentest_chaperon_commands_oopsla
	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/gentest_chaperon_commands ]] && cat $(BUILDDIR)/$(t)/gentest_chaperon_commands >> $(BUILDDIR)/all_gentest_chaperon_commands_oopsla || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_gentest_chaperon_commands_oopsla

run_oopsla_test_bfs:
	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_oopsla
	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_oopsla || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_oopsla

run_oopsla_test_dfs:
	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_oopsla
	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_oopsla || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_oopsla

run_oopsla_tsvc_prior_dfs:
	$(foreach t,$(TSVC_PRIOR_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_tsvc_prior
	$(foreach t,$(TSVC_PRIOR_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_prior || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_prior

run_oopsla_tsvc_prior_bfs:
	$(foreach t,$(TSVC_PRIOR_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_tsvc_prior
	$(foreach t,$(TSVC_PRIOR_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_prior || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_prior

run_oopsla_tsvc_new_bfs:
	$(foreach t,$(TSVC_NEW_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_tsvc_new
	$(foreach t,$(TSVC_NEW_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_new || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_new

run_oopsla_tsvc_new_dfs:
	$(foreach t,$(TSVC_NEW_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_tsvc_new
	$(foreach t,$(TSVC_NEW_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_tsvc_new || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_tsvc_new

run_oopsla_lore_mem_bfs:
	$(foreach t,$(LORE_MEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_lore_mem
	$(foreach t,$(LORE_MEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_lore_mem || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_mem

run_oopsla_lore_mem_dfs:
	$(foreach t,$(LORE_MEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_lore_mem
	$(foreach t,$(LORE_MEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_lore_mem || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_mem

run_oopsla_lore_nomem_bfs:
	$(foreach t,$(LORE_NOMEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_lore_nomem
	$(foreach t,$(LORE_NOMEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_bfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_bfs >> $(BUILDDIR)/all_chaperon_commands_lore_nomem || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_nomem

run_oopsla_lore_nomem_dfs:
	$(foreach t,$(LORE_NOMEM_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_lore_nomem
	$(foreach t,$(LORE_NOMEM_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands_dfs ]] && cat $(BUILDDIR)/$(t)/chaperon_commands_dfs >> $(BUILDDIR)/all_chaperon_commands_lore_nomem || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_lore_nomem


typecheck_test:
	$(SUPEROPT_PROJECT_DIR)/superopt/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) codegen_test || exit;)

ooelala_test:
	$(foreach t,$(OOELALA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) ooelala_test || exit;)

.PHONY: all clean distclean $(TARGETS) gentest runtest gen_oopsla_test run_oopsla_test
