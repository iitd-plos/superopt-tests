#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strspn(struct list *s, struct list *accept)
{
  size_t l = 0;
  struct list *a;
  
  for (; s->ch; s = s->next) {
    a = accept;
    while (a->ch && s->ch != a->ch) {
      a = a->next;

      if (!a->ch || s->ch == a->ch) break;
      a = a->next;

      if (!a->ch || s->ch == a->ch) break;
      a = a->next;

      if (!a->ch || s->ch == a->ch) break;
      a = a->next;
    }

    if (!a->ch)
      break;
    else
      l++;
  }
  return l;
}
