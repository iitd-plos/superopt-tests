CC=afl-gcc
AFL_FUZZ=afl-fuzz
SRC=src
UTILS=utils
IDIR=include
OBJ=obj
UTILS=utils
OUT=out
HARNESS=harness
INEQ=inequivalences.csv
BIN=bin
FUZZ_HARNESS=fuzz_harness
LOGS=logs
NJOBS=52

BENCHMARKS=$(wildcard $(SRC)/*.c)
BENCH_OBJ=$(patsubst $(SRC)/%.c, $(OBJ)/%.o, $(BENCHMARKS))

.PHONY: clean compile_src clean clean_all

compile:
	mkdir -p $(SRC)
	mkdir -p $(HARNESS)
	mkdir -p $(BIN)
	mkdir -p $(OUT)
	mkdir -p $(LOGS)
	python3 fuzzing.py --input_file $(INEQ) --cc $(CC)

run:
	./system_config.sh apply
	python3 fuzzing.py --input_file $(INEQ) --run_experiments --njobs $(NJOBS)
	./system_config.sh revert
	python3 fuzzing.py --input_file $(INEQ) --analysis

compile_src: $(BENCH_OBJ)

$(BENCH_OBJ): $(OBJ)/%.o: $(SRC)/%.c
	$(CC) -c $< -I$(IDIR) -o $@

clean:
	rm -f $(BIN)/*
	rm -rf __pycache__

clean_all:	clean
	rm -f $(SRC)/*.c $(HARNESS)/*.c
	rm -rf $(OUT)/*
	rm -f $(LOGS)/*.log


