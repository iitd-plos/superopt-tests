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

    if (fuzz_harness_strlen(argc, argv, s)) {
        return 1;
    }

    const size_t ret_dietlibc_small = strlen_dietlibc_small(s);
    const size_t ret_newlib = strlen_newlib(s);

    if (ret_dietlibc_small != ret_newlib) {
        fprintf(stderr, "Fatal: found an inequivalence between the dietlibc_small and newlib implementations!\n");
        assert(0);
    }
    return 0;
}
