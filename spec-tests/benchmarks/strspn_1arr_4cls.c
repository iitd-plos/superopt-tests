#include <stddef.h>

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

size_t strspn(const char *s, struct chunked_list *accept)
{
  size_t l = 0;
  struct chunked_list *a;
  
  for (; *s; s++) {
    int found = 0;
    a = accept;
    while (a->vals[0]) {
      if (*s == a->vals[0]) {
        found = 1;
        break;
      }

      if (!a->vals[1]) break;
      if (*s == a->vals[1]) {
        found = 1;
        break;
      }

      if (!a->vals[2]) break;
      if (*s == a->vals[2]) {
        found = 1;
        break;
      }

      if (!a->vals[3]) break;
      if (*s == a->vals[3]) {
        found = 1;
        break;
      }

      a = a->next;
    }

    if (!found)
      break;
    else
      l++;
  }
  return l;
}
