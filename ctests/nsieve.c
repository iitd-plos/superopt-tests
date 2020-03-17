#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "eqchecker_helper.h"

typedef unsigned char boolean;


unsigned int nsieve_static(int m) {
    unsigned int count = 0, i, j;
    boolean * flags = (boolean *) MYmymalloc(m * sizeof(boolean));
    memset(flags, 1, m);

    for (i = 2; i < m; ++i)
        if (flags[i]) {
            ++count;
            for (j = i << 1; j < m; j += i)
                if (flags[j]) flags[j] = 0;
    }

    MYmyfree(flags);
    return count;
}

int main(int argc, char * argv[]) {
    int m = argc < 2 ? 9 : atoi(argv[1]);
    int i;
    for (i = 0; i < 3; i++)
    {
        unsigned int count = nsieve_static(10000 << (m-i));
        printf("Primes up to %8u %8u\n", 10000 << (m-i), count);
    }
    return 0;
}
