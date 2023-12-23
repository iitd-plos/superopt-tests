#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct chunked_list {
    char vals[4];
    struct chunked_list *next;
};

size_t strcspn(struct list* s, struct chunked_list *reject)
{
  size_t l = 0;
  struct chunked_list* r;

  for (; s->ch; s = s->next) {
    r = reject;
    while (r->vals[0]) {
      if (s->ch == r->vals[0]) return l;
      
      if (!r->vals[1]) break;
      if (s->ch == r->vals[1]) return l;

      if (!r->vals[2]) break;
      if (s->ch == r->vals[2]) return l;

      if (!r->vals[3]) break;
      if (s->ch == r->vals[3]) return l;

      r = r->next;
    }
    ++l;
  }
  return l;
}
