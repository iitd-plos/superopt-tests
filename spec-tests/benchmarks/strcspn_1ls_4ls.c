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
    r = reject;
    while (r->ch) {
      if (s->ch == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (s->ch == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (s->ch == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (s->ch == r->ch) return l;
      r = r->next;
    }
    ++l;
  }
  return l;
}
