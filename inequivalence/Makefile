TEST_FILE=tests_v1.csv

.PHONY: clean	clean_all	run

clean:
	@rm -f *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s
	@cd benchmarks/ && rm -f *.log *.o *.harvest *.tmp *.bc *.etfg *.tfg *.s

clean_all:	clean
	@rm -rf logs/*.proof
	@rm -rf stats/*.log

run:
	mkdir -p logs
	mkdir -p stats
	python3 -u benchmarking.py $(TEST_FILE)