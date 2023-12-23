#include <stddef.h>

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

char *strpbrk(const char *s, struct chunked_list *accept) {
  register struct chunked_list *a;

  for (; *s; s++) {
    a = accept;
    while (a->vals[0]) {
      if (*s == a->vals[0]) return s;
      
      if (!a->vals[1]) break;
      if (*s == a->vals[1]) return s;
      
      if (!a->vals[2]) break;
      if (*s == a->vals[2]) return s;

      if (!a->vals[3]) break;
      if (*s == a->vals[3]) return s;

      a = a->next;
    }
  }
  return 0;
}
