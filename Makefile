SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
#KFRAMEWORK_TARGETS := gcc_torture
EQCHECK_TARGETS := bzip2 tsvc semalign reve ctests micro soundness #$(KFRAMEWORK_TARGETS) #bzip2_minimal_changes
OOPSLA_TARGETS := oopsla_tests
CODEGEN_TARGETS := compcert-tests
OOELALA_TARGETS := ooelala-tests
UNITTEST_TARGETS := unit-tests
TARGETS := $(EQCHECK_TARGETS) $(CODEGEN_TARGETS) $(OOELALA_TARGETS) $(OOPSLA_TARGETS) $(UNITTEST_TARGETS)
MAKEFILES := $(addsuffix /Makefile,$(TARGETS))
BUILD_MAKEFILES := $(addprefix $(BUILDDIR)/,$(MAKEFILES))

export SUPEROPT_PROJECT_DIR
export SUPEROPT_INSTALL_DIR

PARALLEL_LOAD_PERCENT ?= 33

# rules

all: $(TARGETS)

clean:
	$(foreach t,$(TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) clean;)

distclean: clean
	rm -rf config-host.mak $(BUILDDIR)

$(BUILDDIR)/%:
	mkdir -p $@

$(BUILD_MAKEFILES): $(BUILDDIR)/%/Makefile: %/Makefile $(BUILDDIR)/%
	cp $< $@

$(TARGETS): %: $(BUILDDIR)/%/Makefile
	$(MAKE) -C $(BUILDDIR)/$@

gentest:
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 gentest || exit;)
	true > $(BUILDDIR)/all_gentest_chaperon_commands
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/gentest_chaperon_commands ]] && cat $(BUILDDIR)/$(t)/gentest_chaperon_commands >> $(BUILDDIR)/all_gentest_chaperon_commands || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_gentest_chaperon_commands

runtest:
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 runtest || exit;)
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
	$(SUPEROPT_PROJECT_DIR)/superopt/build/etfg_i386/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) codegen_test || exit;)

ooelala_test:
	$(foreach t,$(OOELALA_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) ooelala_test || exit;)

semanticaa_test:
	$(MAKE) -C $(BUILDDIR)/bzip2 semanticaa_test || exit

.PHONY: all clean distclean $(TARGETS) gentest runtest gen_oopsla_test run_oopsla_test unittest
