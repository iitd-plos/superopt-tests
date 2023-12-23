.PHONY: all
all : build_extract_stats

.PHONY: build_extract_stats
build_extract_stats: extract_stats.cpp
	clang++-12 -std=c++17 -O3 extract_stats.cpp -o extract_stats
