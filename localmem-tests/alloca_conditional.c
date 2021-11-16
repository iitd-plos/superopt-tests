#include <alloca.h>

int alloca_conditional(char* s, int fd, char* a)
{
  if (!s)
    return 0;
  int n = MYmystrlen(s);
  if (!a) {
    a = alloca(n);
  }
  for (int i = 0; i < n; ++i) {
    a[i] = MYmytolower(s[i]);
  }
  return write(fd, a, n);
}
