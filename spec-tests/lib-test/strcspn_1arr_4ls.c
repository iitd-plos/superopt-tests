#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strcspn(const char *s, struct list *reject)
{
  size_t l = 0;
  struct list* r;

  for (; *s; ++s) {
    r = reject;
    while (r->ch) {
      if (*s == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (*s == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (*s == r->ch) return l;
      r = r->next;

      if (!r->ch) break;
      if (*s == r->ch) return l;
      r = r->next;
    }
    ++l;
  }
  return l;
}
