#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strcspn(struct list* s, struct list *reject)
{
  size_t l = 0;
  struct list* r;

  for (; s->ch; s = s->next) {
    for (r = reject; r->ch; r = r->next)
      if (s->ch == r->ch) return l;
    ++l;
  }
  return l;
}
