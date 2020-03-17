#include <stddef.h>
// dietlibc

void* memchr(const void *s, int c, size_t n) {
  const unsigned char *pc = (unsigned char *) s;
  for (;n--;pc++) {
    if (*pc == (unsigned char)c)
    /*if (*pc == c) // ORIGINAL code */
      // In ORIGINAL code eqcheck fails because (*pc) gets zero-extended and thus may not be equal to c (cf. dst where a cast is performed) when c is greater than UCHAR_MAX
      return ((void *) pc);
  }
  return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
