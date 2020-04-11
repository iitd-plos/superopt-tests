#include <stddef.h>

char *
strchrnul(const char *s, unsigned char c)
{
  char * ptr = s;
  for (; *ptr != c; ++ptr)
    if (*ptr == '\0')
      return (void *) ptr;
  return (char *) ptr;
}

int main() {
  return 0;
}
