#include <alloca.h>

int alloca_conditional(char* s, int fd, char* a)
{
  int n;
  if (!s || (n = MYmystrlen(s)) <= 0)
    return 0;
  if (!a) {
    a = alloca(n);
  }
  for (int i = 0; i < n; ++i) {
    a[i] = MYmytolower(s[i]);
  }
  return write(fd, a, n);
}
