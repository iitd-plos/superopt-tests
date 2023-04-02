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
    wchar_t wcs[MAX_SIZE / WIDE_CHAR_WIDTH];
    wchar_t wc;

    if (fuzz_harness_wcschr(argc, argv, wcs, &wc)) {
        return 1;
    }

    const wchar_t *ret_dietlibc = wcschr_dietlibc(wcs, wc);
    const wchar_t *ret_freebsd = wcschr_freebsd(wcs, wc);

    if (ret_dietlibc != ret_freebsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and freebsd implementations!\n");
        assert(0);
    }
    return 0;
}
