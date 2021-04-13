include ../config.mak
include $(SRCDIR)/Make.conf

$(SPEC_BUILD)/build_done: $(SPEC_BUILD)/cpu2017 $(SPEC_BUILD)/spec.bc.cfg $(SRCDIR)/misc/c2bc.py $(SRCDIR)/misc/bclink.py
	bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --iterations=0 --action=build --config=$(SPEC_BUILD)/spec.bc.cfg 600.perlbench_s 602.gcc_s 605.mcf_s 657.xz_s 538.imagick_r 544.nab_r 525.x264_r 519.lbm_r && cd -"
	bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --iterations=0 --action=build --config=$(SPEC_BUILD)/spec.clang.O0.cfg 600.perlbench_s 602.gcc_s 605.mcf_s 657.xz_s 538.imagick_r 544.nab_r 525.x264_r 519.lbm_r && cd -"
	touch $@

$(SPEC_BUILD)/cpu2017: $(SRCDIR)/misc/expect_script_for_spec_install.sh
	rm -rf $@
	expect $(SRCDIR)/misc/expect_script_for_spec_install.sh $(SPEC_MOUNT)/install.sh $@

$(SPEC_BUILD)/spec.bc.cfg: $(SRCDIR)/misc/spec.bc.cfg
	cp $< $@
