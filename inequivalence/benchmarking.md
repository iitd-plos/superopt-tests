# Benchmarking

- Unroll-factor = 8, failset-mu = 8, timeout = 1.5 hours

## Observations

- A lot of benchmarks TIMEOUT because at high values of failset-mu, a lot of paths get accumulated

## Errors

## `memccpy_0`

- `dietlibc_musl`: TIMEOUT; decreasing `failset-mu` works
- `dietlibc_newlib_v2`, `newlib_v2_dietlibc`: FAIL. mu = 16, unroll-factor=64 works
- `dietlibc_uClibc`, `uClibc_dietlibc`: FAIL. (8, 8) works
- `freebsd_musl`: FAIL. Expected EQUIV, does not work at high unroll-factors as well

## `memcmp`

- 8 libraries, all EQUIV

## `memcpy`

- 10 libraries
- `dietlibc_v1_freebsd`: FAIL
- `klibc_v2` has `asm volatile` code, which does not compile
- TODO

## `memmove`

- All benchmark pairs FAIL

## `memrchr`
