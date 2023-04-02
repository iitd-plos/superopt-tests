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
    wchar_t s1[MAX_SIZE / WIDE_CHAR_WIDTH], s2[MAX_SIZE / WIDE_CHAR_WIDTH];
    size_t n;

    if (fuzz_harness_wcsncmp(argc, argv, s1, s2, &n)) {
        return 1;
    }

    const int ret_dietlibc = wcsncmp_dietlibc(s1, s2, n);
    const int ret_glibc = wcsncmp_glibc(s1, s2, n);

    if (ret_dietlibc != ret_glibc) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and glibc implementations!\n");
        assert(0);
    }
    return 0;
}
