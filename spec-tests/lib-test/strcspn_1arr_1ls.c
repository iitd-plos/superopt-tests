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
    for (r = reject; r->ch; r = r->next)
      if (*s == r->ch) return l;
    ++l;
  }
  return l;
}
