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
    char s1[MAX_SIZE], s2[MAX_SIZE];

    if (fuzz_harness_strcmp(argc, argv, s1, s2)) {
        return 1;
    }

    const int ret_dietlibc_small = strcmp_dietlibc_small(s1, s2);
    const int ret_dietlibc_fast_patched = strcmp_dietlibc_fast_patched(s1, s2);

    if (ret_dietlibc_small != ret_dietlibc_fast_patched) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc_small and dietlibc_fast_patched implementations!\n");
        assert(0);
    }
    return 0;
}
