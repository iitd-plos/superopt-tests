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

    if (fuzz_harness_wmemcmp(argc, argv, s1, s2, &n)) {
        return 1;
    }

    const int ret_musl = wmemcmp_musl(s1, s2, n);
    const int ret_netbsd = wmemcmp_netbsd(s1, s2, n);

    if (ret_musl != ret_netbsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the musl and netbsd implementations!\n");
        assert(0);
    }
    return 0;
}
