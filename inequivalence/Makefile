TEST_FILE=tests_v4.csv
SPEC_TEST=calib_test.csv

.PHONY: clean	clean_all	run	run_spec

clean:
	@rm -f *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s
	@cd benchmarks/ && rm -f *.log *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s

clean_all:	clean
	@rm -rf logs/*.proof
	@rm -rf stats/*.log
	@rm -rf eq_classes/*.pkl
	@rm -rf graphviz/*.dot
	@rm -f *.ALL *.record *.src-tfg *.dst-tfg
	@rm -f counterexamples/*

run:
	mkdir -p logs
	mkdir -p stats
	mkdir -p eq_classes
	mkdir -p graphviz
	mkdir -p counterexamples
	mkdir -p plots
	python3 benchmarking.py --mode run_all --input_file $(TEST_FILE)
	python3 benchmarking.py --mode analysis --input_file $(TEST_FILE)
	python3 benchmarking.py --mode graph_gen --input_file $(TEST_FILE)

run_spec:
	mkdir -p logs_spec
	python3 benchmarking.py --mode run_spec --input_file $(SPEC_TEST)

gen_assumes:
	mkdir -p assumes