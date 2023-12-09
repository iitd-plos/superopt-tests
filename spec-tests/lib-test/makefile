build_extract_stats: extract_stats.cpp
	${CXX} -std=c++17 -O3 extract_stats.cpp -o extract_stats

run_full:
	parallel --load=30% :::: suite_full.sh

run:
	parallel --load=30% :::: suite.sh

clean:
	rm -rf tmpdir*  par_tmpdir* scan.*

