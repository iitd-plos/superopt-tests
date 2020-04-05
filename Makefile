SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
EQCHECK_TARGETS := bzip2 tsvc semalign reve ctests micro soundness #bzip2_minimal_changes
CODEGEN_TARGETS := compcert-tests
TARGETS := $(EQCHECK_TARGETS) $(CODEGEN_TARGETS)

PARALLEL_LOAD_PERCENT ?= 33

# rules

all: $(BUILDDIR) $(TARGETS)

clean:
	$(foreach t,$(TARGETS),make -C $(BUILDDIR)/$(t) clean;)

distclean: clean
	rm -rf config-host.mak $(BUILDDIR)

$(BUILDDIR):
	mkdir -p $@

$(EQCHECK_TARGETS) $(CODEGEN_TARGETS):
	mkdir -p $(BUILDDIR)/$@
	cp $@/Makefile -t $(BUILDDIR)/$@
	make -C $(BUILDDIR)/$@

gentest:
	$(foreach t,$(EQCHECK_TARGETS),make -C $(BUILDDIR)/$(t) gentest || exit;)

runtest:
	$(foreach t,$(EQCHECK_TARGETS),make -C $(BUILDDIR)/$(t) runtest || exit;)
	true > $(BUILDDIR)/all_chaperon_commands
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/chaperon_commands ]] && cat $(BUILDDIR)/$(t)/chaperon_commands >> $(BUILDDIR)/all_chaperon_commands || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/all_chaperon_commands

typecheck_test:
	$(SUPEROPT_PROJECT_DIR)/superopt/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),make -C $(BUILDDIR)/$(t) codegen_test || exit;)

.PHONY: all clean distclean $(TARGETS) gentest runtest
