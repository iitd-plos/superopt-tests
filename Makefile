include config-host.mak      # BUILDDIR

# add new dirs' targets here
TARGETS := bzip2 tsvc semalign

# rules

all:: $(BUILDDIR) $(TARGETS)

clean:
	$(foreach t,$(TARGETS),make -C $(BUILDDIR)/$(t) clean;)

distclean: clean
	rm -rf config-host.mak $(BUILDDIR)

$(BUILDDIR):
	mkdir -p $@

$(TARGETS)::
	cp $@/Makefile -t $(BUILDDIR)/$@
	make -C $(BUILDDIR)/$@



.PHONY: all clean distclean $(TARGETS)
