superopt-tests
==============

Collection of test suites for superopt.

## Building

```sh
# first time configuration
./configure

# for building all test suites
make

# Or, for a particular test suite
make <dirname>

# For example, for building bzip2 the following command would be used
make bzip2
```

## Cleaning-up

For restoring the pristine state use:
```sh
make distclean
```

For deleting only the compiled files, use:
```sh
make clean
```
