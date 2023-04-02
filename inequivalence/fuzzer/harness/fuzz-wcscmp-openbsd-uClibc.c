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

    const int ret_openbsd = wcscmp_openbsd(s1, s2);
    const int ret_uClibc = wcscmp_uClibc(s1, s2);

    if (ret_openbsd != ret_uClibc) {
        fprintf(stderr, "Fatal: found an inequivalence between the openbsd and uClibc implementations!\n");
        assert(0);
    }
    return 0;
}
