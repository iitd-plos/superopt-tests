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

    if (fuzz_harness_wcscmp(argc, argv, s1, s2)) {
        return 1;
    }

    const int ret_dietlibc = wcscmp_dietlibc(s1, s2);
    const int ret_freebsd = wcscmp_freebsd(s1, s2);

    if (ret_dietlibc != ret_freebsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and freebsd implementations!\n");
        assert(0);
    }
    return 0;
}
