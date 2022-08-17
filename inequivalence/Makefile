TEST_FILE=tests_v1.csv

.PHONY: clean	clean_all	run

clean:
	@rm -f *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s
	@cd benchmarks/ && rm -f *.log *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s

clean_all:	clean
	@rm -rf logs/*.proof
	@rm -rf stats/*.log
	@rm -rf eq_classes/*.pkl
	@rm -rf graphviz/*.dot

run:
	mkdir -p logs
	mkdir -p stats
	mkdir -p eq_classes
	mkdir -p graphviz
	python3 benchmarking.py --run_exp --input_file $(TEST_FILE)