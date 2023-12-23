.PHONY: run_full
run_full:
	parallel --load=40% :::: suite_full.sh

.PHONY: run
run:
	parallel --load=40% :::: suite.sh

.PHONY: clean
clean:
	rm -rf tmpdir* scan.*

