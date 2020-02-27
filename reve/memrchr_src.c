/* glibc */
#include <stddef.h>
void *memrchr(const void *s, int c, size_t n) {
    const unsigned char *char_ptr;
    char_ptr = (unsigned char*)s + n;
    while (n-- > 0) {
        if (*--char_ptr == (unsigned char)c)
        /* if (*--char_ptr == c) // ORIGINAL code */
          // In ORIGINAL code eqcheck fails because (*--char_ptr) gets zero-extended and thus may not be equal to c (cf. dst where a cast is performed) when c is greater than UCHAR_MAX
            return (void *)char_ptr;
    }

    return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
