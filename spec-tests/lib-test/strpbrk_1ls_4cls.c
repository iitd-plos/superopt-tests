#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

struct list *strpbrk(struct list *s, struct chunked_list *accept) {
  register struct chunked_list *a;

  for (; s->ch; s = s->next) {
    a = accept;
    while (a->vals[0]) {
      if (s->ch == a->vals[0]) return s;
      
      if (!a->vals[1]) break;
      if (s->ch == a->vals[1]) return s;
      
      if (!a->vals[2]) break;
      if (s->ch == a->vals[2]) return s;

      if (!a->vals[3]) break;
      if (s->ch == a->vals[3]) return s;

      a = a->next;
    }
  }
  return 0;
}
