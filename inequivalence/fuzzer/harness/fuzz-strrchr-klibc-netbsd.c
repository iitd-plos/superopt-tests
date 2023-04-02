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
    int c;

    if (fuzz_harness_strrchr(argc, argv, s, &c)) {
        return 1;
    }

    const char *ret_klibc = strrchr_klibc(s, c);
    const char *ret_netbsd = strrchr_netbsd(s, c);

    if (ret_klibc != ret_netbsd) {
        fprintf(stderr, "Fatal: found an inequivalence between the klibc and netbsd implementations!\n");
        assert(0);
    }
    return 0;
}
