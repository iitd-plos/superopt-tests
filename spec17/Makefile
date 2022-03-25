include ../config.mak
include $(SRCDIR)/Make.conf

$(SPEC_BUILD)/build_done: $(SPEC_BUILD)/cpu2017 $(SPEC_BUILD)/spec.bc.cfg $(SRCDIR)/misc/c2bc.py $(SRCDIR)/misc/bclink.py # $(SPEC_BUILD)/spec.clang.O0.cfg
	bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --iterations=0 --action=build --config=$(SPEC_BUILD)/spec.bc.cfg 600.perlbench_s 602.gcc_s 605.mcf_s 657.xz_s 538.imagick_r 544.nab_r 625.x264_s 519.lbm_r && cd -"
	mkdir -p $(SPEC_BUILD)/bc
	cp -f $(SPEC_BUILD)/cpu2017/benchspec/CPU/600.perlbench_s/build/build_base_mytest-m64.0000/perlbench_s \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/602.gcc_s/build/build_base_mytest-m64.0000/sgcc \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/605.mcf_s/build/build_base_mytest-m64.0000/mcf_s \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/657.xz_s/build/build_base_mytest-m64.0000/xz_s \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/538.imagick_r/build/build_base_mytest-m64.0000/imagick_r \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/544.nab_r/build/build_base_mytest-m64.0000/nab_r \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/625.x264_s/build/build_base_mytest-m64.0000/x264_s \
     $(SPEC_BUILD)/cpu2017/benchspec/CPU/519.lbm_r/build/build_base_mytest-m64.0000/lbm_r \
     $(SPEC_BUILD)/bc
	#bash -c "cd $(SPEC_BUILD)/cpu2017 && source shrc && runcpu --iterations=0 --action=build --config=$(SPEC_BUILD)/spec.clang.O0.cfg 600.perlbench_s 602.gcc_s 605.mcf_s 657.xz_s 538.imagick_r 544.nab_r 625.x264_s 519.lbm_r && cd -"
	#mkdir -p $(SPEC_BUILD)/clang.O0
	#cp -f $(SPEC_BUILD)/cpu2017/benchspec/CPU/600.perlbench_s/build/build_base_mytest-m64.0000/perlbench_s \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/602.gcc_s/build/build_base_mytest-m64.0000/sgcc \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/605.mcf_s/build/build_base_mytest-m64.0000/mcf_s \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/657.xz_s/build/build_base_mytest-m64.0000/xz_s \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/538.imagick_r/build/build_base_mytest-m64.0000/imagick_r \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/544.nab_r/build/build_base_mytest-m64.0000/nab_r \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/625.x264_s/build/build_base_mytest-m64.0000/x264_s \
  #   $(SPEC_BUILD)/cpu2017/benchspec/CPU/519.lbm_r/build/build_base_mytest-m64.0000/lbm_r \
  #   $(SPEC_BUILD)/clang.O0
	touch $@

$(SPEC_BUILD)/cpu2017: $(SRCDIR)/misc/expect_script_for_spec_install.sh
	rm -rf $@
	expect $(SRCDIR)/misc/expect_script_for_spec_install.sh $(SPEC_MOUNT)/install.sh $@

$(SPEC_BUILD)/%.cfg: $(SRCDIR)/misc/%.cfg
	cp $< $@
