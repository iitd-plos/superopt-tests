TEST_FILE=tests_v4.csv
ASSUME_TESTS=tests_assumes.csv
NJOBS=30
NUM_CHUNKS=1

.PHONY: clean	clean_all	clean_classes	run	gen_assumes	graph_gen

clean:
	@rm -f *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s
	@rm -f benchmarks/*/*/*.bc
	@rm -f benchmarks/*/*/*.tmp
	@rm -f benchmarks/*/*/*.etfg

clean_all:	clean
	@rm -rf logs/*.proof
	@rm -rf stats/*.log stats/*.csv
	@rm -rf graphviz/*.dot
	@rm -f *.ALL *.record *.src-tfg *.dst-tfg

clean_classes:
	@rm -rf eq_classes/*.pkl
	@rm -f counterexamples/*

run:
	mkdir -p logs
	mkdir -p stats
	mkdir -p eq_classes
	mkdir -p graphviz
	mkdir -p counterexamples
	mkdir -p plots
	python3 benchmarking.py --mode run_all --input_file $(TEST_FILE) --njobs $(NJOBS) --num_chunks $(NUM_CHUNKS)
	python3 benchmarking.py --mode analysis --input_file $(TEST_FILE)

graph_gen:
	python3 benchmarking.py --mode graph_gen --input_file $(TEST_FILE)

gen_assumes:
	mkdir -p assumes
	python3 gen_assumes.py

run_assumes:
	python3 benchmarking.py --mode run_all --input_file $(ASSUME_TESTS) --assumes --njobs $(NJOBS) --num_chunks $(NUM_CHUNKS)
	python3 benchmarking.py --mode analysis --input_file $(ASSUME_TESTS)
