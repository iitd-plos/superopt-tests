#include <sys/types.h>
#include <string.h>

char *strpbrk(const char *s, const char *accept) {
  register unsigned int i;
  for (; *s; s++) {
    i = 0;
    while (accept[i]) {
      if (*s == accept[i])
        return (char*)s;
      i++;

      if (!accept[i]) break;
      if (*s == accept[i])
        return (char*)s;
      i++;

      if (!accept[i]) break;
      if (*s == accept[i])
        return (char*)s;
      i++;

      if (!accept[i]) break;
      if (*s == accept[i])
        return (char*)s;
      i++;
    }
  }
  return 0;
}
