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
    wchar_t haystack[MAX_SIZE / WIDE_CHAR_WIDTH], needle[MAX_SIZE / WIDE_CHAR_WIDTH];

    if (fuzz_harness_wcsstr(argc, argv, haystack, needle)) {
        return 1;
    }

    const wchar_t *ret_uClibc = wcsstr_uClibc(haystack, needle);
    const wchar_t *ret_dietlibc = wcsstr_dietlibc(haystack, needle);

    if (ret_uClibc != ret_dietlibc) {
        fprintf(stderr, "Fatal: found an inequivalence between the uClibc and dietlibc implementations!\n");
        assert(0);
    }
    return 0;
}
