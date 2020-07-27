SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
EQCHECK_TARGETS := tsvc bzip2 semalign reve ctests micro soundness #bzip2_minimal_changes
OOPSLA_TARGETS := oopsla_tests  corr_tests_hand_optimized tsvc
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

run_oopsla_test:
	$(foreach t,$(OOPSLA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands_oopsla
	$(foreach t,$(OOPSLA_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands ]] && cat $(BUILDDIR)/$(t)/chaperon_commands >> $(BUILDDIR)/all_chaperon_commands_oopsla || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands_oopsla

typecheck_test:
	$(SUPEROPT_PROJECT_DIR)/superopt/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) codegen_test || exit;)

ooelala_test:
	$(foreach t,$(OOELALA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) ooelala_test || exit;)

.PHONY: all clean distclean $(TARGETS) gentest runtest gen_oopsla_test run_oopsla_test
