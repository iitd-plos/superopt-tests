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
    size_t n;

    if (fuzz_harness_strncasecmp(argc, argv, s1, s2, &n)) {
        return 1;
    }

    const int ret_dietlibc = strncasecmp_dietlibc(s1, s2, n);
    const int ret_openbsd = strncasecmp_openbsd(s1, s2, n);

    if (ret_dietlibc != ret_openbsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc and openbsd implementations!\n");
        assert(0);
    }
    return 0;
}
