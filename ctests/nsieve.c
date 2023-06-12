#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef unsigned char boolean;

void *MYmymalloc(size_t size);
void *MYmymemset(void *s, int c, size_t n);
void MYmyfree(void *ptr);
int MYmyprintf(const char *format, ...);
int MYmyatoi(const char *nptr);

unsigned int nsieve_static(int m) {
    unsigned int count = 0, i, j;
    boolean * flags = (boolean *) MYmymalloc(m * sizeof(boolean));
    MYmymemset(flags, 1, m);

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
    int m = argc < 2 ? 9 : MYmyatoi(argv[1]);
    int i;
    for (i = 0; i < m; i++)
    {
        unsigned int count = nsieve_static(10000 << (m-i));
        MYmyprintf("Primes up to %8u %8u\n", 10000 << (m-i), count);
    }
    return 0;
}
