TEST_FILE=tests_v4.csv
ASSUME_TESTS=tests_assumes.csv

.PHONY: clean	clean_all	run	run_spec gen_assumes

clean:
	@rm -f *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s
	rm -f benchmarks/C/*/*.bc
	rm -f benchmarks/C/*/*.tmp
	rm -f benchmarks/C/*/*.etfg

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

gen_assumes:
	mkdir -p assumes
	python3 benchmarking.py --mode gen_assumes --input_file $(ASSUME_TESTS)

run_assumes:
	python3 benchmarking.py --mode run_all --input_file $(ASSUME_TESTS) --assumes
	python3 benchmarking.py --mode analysis --input_file $(ASSUME_TESTS)

