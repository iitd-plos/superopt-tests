include config-host.mak      # BUILDDIR

# add new dirs' targets here
EQCHECK_TARGETS := bzip2 tsvc semalign reve ctests micro soundness
CODEGEN_TARGETS := compcert-tests
TARGETS := $(EQCHECK_TARGETS) $(CODEGEN_TARGETS)

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

typecheck_test:
	$(SUPEROPT_PROJECT_DIR)/superopt/typecheck

codegen_test:
	$(foreach t,$(CODEGEN_TARGETS),make -C $(BUILDDIR)/$(t) codegen_test || exit;)

.PHONY: all clean distclean $(TARGETS) gentest runtest
