/* dietlibc */
#include <stddef.h>
void *memccpy(void *dst, const void *src, int c, size_t count) {
    char *a = dst;
    const char *b = src;
    while (count--) {
        *a++ = *b;
        if (*b == (char)c) {
        /*if (*b == c) { // ORIGINAL code */
        // In ORIGINAL code eqcheck fails because (*b) gets sign-extended and thus may not be equal to c (cf. dst where a cast is performed) when sign bit is set
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
