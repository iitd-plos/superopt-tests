#include <sys/types.h>
#include <string.h>

size_t strspn(const char *s, const char *accept)
{
  size_t l = 0;
  const char *a;

  for (; *s; s++) {
    a = accept;
    while (*a && *s != *a) {
      a++;

      if (!*a || *s == *a) break;
      a++;

      if (!*a || *s == *a) break;
      a++;

      if (!*a || *s == *a) break;
      a++;
    }

    if (!*a)
      break;
    else
     l++;
  }

  return l;
}
