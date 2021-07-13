#include <alloca.h>

int vlax_0(char* s, int fd)
{
  if (!s)
    return 0;
  int n = strlen(s);
  char* a;
  if (n < 4096) {
    a = alloca(n);
  } else {
    a = MYmymalloc(n);
    if (!a) return 0;
  }
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < n; ++i) {
    MYmyDBG();
    a[i] = s[i] ^ 1;
  }
  int ret = write(fd, a, n);
  if (!(n < 4096))
    MYmyfree(a);
  return ret;
}

int vlax_1(char* s, int fd, char* a)
{
  if (!s)
    return 0;
  int n = strlen(s);
  if (!a) {
    a = alloca(n);
  }
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < n; ++i) {
    MYmyDBG();
    a[i] = s[i] ^ 1;
  }
  int ret = write(fd, a, n);
  return ret;
}

