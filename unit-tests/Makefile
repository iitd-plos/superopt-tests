include ../config.mak                        # paths

# set VPATH path for targets and src files
VPATH = $(SRCDIR)/unit-tests

all:

runtests: 0.pr 0.upinv
	$(SUPEROPT_PROJECT_DIR)/superopt/build/etfg_i386/prove_using_local_sprel_expr_guesses $(VPATH)/0.pr
	$(SUPEROPT_PROJECT_DIR)/superopt/build/etfg_i386/update_invariant_state_over_edge $(VPATH)/0.upinv

.PHONY: all runtests
