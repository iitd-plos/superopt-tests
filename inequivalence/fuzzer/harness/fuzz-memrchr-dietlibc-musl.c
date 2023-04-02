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

    if (fuzz_harness_memrchr(argc, argv, s, &c, &n)) {
        return 1;
    }

    const void* ret_dietlibc = memrchr_dietlibc(s, c, n);
    const void *ret_musl = memrchr_musl(s, c, n);

    if (ret_dietlibc != ret_musl) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and musl implementations!\n");
        assert(0);
    }
    return 0;
}
