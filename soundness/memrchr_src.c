/* old glibc */
#include <stddef.h>
void *memrchr(const void *s, int c, size_t n) {
    const unsigned char *char_ptr;
    char_ptr = (unsigned char*)s + n;
    while (n-- > 0) {
        if (*--char_ptr == c)
          // eqcheck fails because (*--char_ptr) gets zero-extended and thus may not be equal to c (cf. dst where a cast is performed) when c is greater than UCHAR_MAX
          // See example inputs below
            return (void *)char_ptr;
    }

    return 0;
}

int main(int argc, char* argv[])
{
  // zext(255) != 0xffffffff (~0x0, hence memchr return 0
  const char src[] = { 1, 2, 3, 255 };
  printf("%p %p", src, (int*)memrchr(src, ~0x0, 4));
  return 0;
}
