#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strcspn(struct list *s, const char *reject)
{
  size_t l = 0;
  int i;

  for (; s->ch; s = s->next) {
    for (i = 0; reject[i]; ++i)
      if (s->ch == reject[i]) return l;
    ++l;
  }
  return l;
}
