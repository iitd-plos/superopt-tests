/* dietlibc */
#include <stddef.h>
void *memccpy(void *dst, const void *src, int c, size_t count) {
    char *a = dst;
    const char *b = src;
    while (count--) {
        *a++ = *b;
        if (*b == c) {
            return (void *)a;
        }
        b++;
    }
    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
