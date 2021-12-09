SHELL := /bin/bash

include config-host.mak      # BUILDDIR

# add new dirs' targets here
EQCHECK_TARGETS := TSVC
TARGETS := $(EQCHECK_TARGETS)
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

eqtest_i386: eqtest_%: $(BUILD_MAKEFILES)
	$(foreach t,$(EQCHECK_TARGETS),$(MAKE) -C $(BUILDDIR)/$(t) RUN=0 $@ || exit;)
	true > $(BUILDDIR)/$@
	$(foreach t,$(EQCHECK_TARGETS), [[ -f $(BUILDDIR)/$(t)/$@ ]] && cat $(BUILDDIR)/$(t)/$@ >> $(BUILDDIR)/$@ || exit;)
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/$@

run_paper_ex:
	$(MAKE) -C $(BUILDDIR)/paper_ex eqtest_i386
	parallel --load "$(PARALLEL_LOAD_PERCENT)%" < $(BUILDDIR)/paper_ex/eqtest_i386

.PHONY: all clean distclean $(TARGETS) run_paper_ex eqtest_i386
