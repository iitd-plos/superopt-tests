#include <stddef.h>
// dietlibc

void* memchr(const void *s, int c, size_t n) {
  const unsigned char *pc = (unsigned char *) s;
  for (;n--;pc++) {
    if (*pc == c)
      return ((void *) pc);
  }
  return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
