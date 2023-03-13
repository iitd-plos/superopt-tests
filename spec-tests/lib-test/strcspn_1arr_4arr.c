#include <sys/types.h>
#include <string.h>

size_t strcspn(const char *s, const char *reject)
{
  size_t l=0;
  int i;

  for (; *s; ++s) {
    i = 0;
    while (reject[i]) {
      if (*s == reject[i]) return l;
      ++i;

      if (!reject[i]) break;
      if (*s == reject[i]) return l;
      ++i;

      if (!reject[i]) break;
      if (*s == reject[i]) return l;
      ++i;

      if (!reject[i]) break;
      if (*s == reject[i]) return l;
      ++i;
    }
    ++l;
  }
  return l;
}
