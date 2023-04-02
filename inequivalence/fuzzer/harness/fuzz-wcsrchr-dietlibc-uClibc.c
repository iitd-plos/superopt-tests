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

    if (fuzz_harness_wcsrchr(argc, argv, wcs, &wc)) {
        return 1;
    }

    const wchar_t *ret_dietlibc = wcsrchr_dietlibc(wcs, wc);
    const wchar_t *ret_uClibc = wcsrchr_uClibc(wcs, wc);

    if (ret_dietlibc != ret_uClibc) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and uClibc implementations!\n");
        assert(0);
    }
    return 0;
}
