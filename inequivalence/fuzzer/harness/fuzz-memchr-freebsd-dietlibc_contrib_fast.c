#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <assert.h>
#include <wchar.h>
#include <time.h>
#include <unistd.h>
#include "fuzz_harness.h"


int main(int argc, char** argv)
{
    char s[MAX_SIZE];
    int c;
    size_t n;

    if (fuzz_harness_memchr(argc, argv, s, &c, &n)) {
        return 1;
    }

    const void *ret_freebsd = memchr_freebsd(s, c, n);
    const void *ret_dietlibc_contrib_fast = memchr_dietlibc_contrib_fast(s, c, n);

    if (ret_freebsd != ret_dietlibc_contrib_fast) {
        fprintf(stderr, "Fatal: found an inequivalence between the freebsd and dietlibc_contrib_fast implementations!\n");
        assert(0);
    }
    return 0;
}
