include ../config.mak
include $(SRCDIR)/Make.conf

$(SPEC_BUILD)/build_done: $(SPEC_BUILD)/cpu2017 $(SRCDIR)/misc/spec.bc.cfg
	bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --config=../../../../misc/spec.bc.cfg SPECspeed2017_int_base && cd -"
	touch $@

$(SPEC_BUILD)/cpu2017: $(SRCDIR)/misc/expect_script_for_spec_install.sh
	rm -rf $@
	expect $(SRCDIR)/misc/expect_script_for_spec_install.sh $(SPEC_MOUNT)/install.sh $@
