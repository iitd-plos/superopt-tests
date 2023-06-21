# INEQ_CHECKER benchmarking

- removed \_\_likely(), \_\_unlikely() calls
- newlib has \_\_DIAGASSERT(), \_\_CONST() calls
- uClibc, netbsd, v2 functions skipped for benchmarking (for now)
- eq32: ../../lib/expr/memlabel.cpp:1377: set<eqspace::memlabel_ref> eqspace::memlabel_t::get_atomic_memlabels() const: Assertion `m_type == MEMLABEL_MEM' failed.
- eq32: ../../lib/expr/expr.cpp:1118: eqspace::memlabel_t eqspace::expr::get_memlabel_value() const: Assertion `this->is_const()' failed.

## Instructions to run the Benchmarks

- All the benchmarks are present in the `benchmarks/` folder. The naming convention is: `{fname}_{lib}.c`
- `benchmarking.py` is the main script that runs all the experiments. It takes an input file (see the .csv files for example format)
- The experiments are run while keeping track of the equivalence and the inequivalence classes
- Call `make run` to run the experiments with `tests_v1.csv`. The timings and the error codes will be generated in `stats.log` and the output logs of all equivalence classes will be in `out.log`
