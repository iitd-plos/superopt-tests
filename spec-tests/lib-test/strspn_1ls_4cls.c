#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

size_t strspn(struct list *s, struct chunked_list *accept)
{
  size_t l = 0;
  struct chunked_list *a;
  
  for (; s->ch; s = s->next) {
    int found = 0;
    a = accept;
    while (a->vals[0]) {
      if (s->ch == a->vals[0]) {
        found = 1;
        break;
      }

      if (!a->vals[1]) break;
      if (s->ch == a->vals[1]) {
        found = 1;
        break;
      }

      if (!a->vals[2]) break;
      if (s->ch == a->vals[2]) {
        found = 1;
        break;
      }

      if (!a->vals[3]) break;
      if (s->ch == a->vals[3]) {
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
