include ../config.mak
include $(SRCDIR)/Make.conf

$(SPEC_BUILD)/cpu2017:
	rm -rf $@
	expect $(SRCDIR)/misc/expect_script_for_spec_install.sh $(SPEC_MOUNT)/install.sh $@
