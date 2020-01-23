// dietlibc
#include <stddef.h>
#include "eqchecker_helper.h"

void *memmem(const void* haystack, size_t hl, const void* needle, size_t nl) {
  int i;
  if (nl>hl) return 0;
  for (i=hl-nl+1; i; --i) {
    if (!memcmp(haystack,needle,nl))
      return (char*)haystack;
    ++haystack;
  }
  return 0;
}

int main(int argc, char* argv[])
{
  return 0;
}
