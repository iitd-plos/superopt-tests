.PHONY: all
all: samples benchmarks

.PHONY: samples
samples:
	$(MAKE) -C samples run

.PHONY: benchmarks
benchmarks:
	$(MAKE) -C benchmarks run

.PHONY: clean
clean:
	$(MAKE) -C samples clean
	$(MAKE) -C benchmarks clean
