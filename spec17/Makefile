include ../config.mak
include $(SRCDIR)/Make.conf

$(SPEC_BUILD)/build_done: $(SPEC_BUILD)/cpu2017 $(SRCDIR)/misc/spec.bc.cfg $(SRCDIR)/misc/c2bc.py $(SRCDIR)/misc/bclink.py
	bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --iterations=0 --config=../../../../misc/spec.bc.cfg SPECspeed2017_int_base && cd -"
	touch $@

$(SPEC_BUILD)/cpu2017: $(SRCDIR)/misc/expect_script_for_spec_install.sh
	rm -rf $@
	expect $(SRCDIR)/misc/expect_script_for_spec_install.sh $(SPEC_MOUNT)/install.sh $@
