#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strspn(const char *s, struct list *accept)
{
  size_t l = 0;
  struct list *a;

  for (; *s; s++) {
    a = accept;
    while (a->ch && *s != a->ch) {
      a = a->next;

      if (!a->ch || *s == a->ch) break;
      a = a->next;

      if (!a->ch || *s == a->ch) break;
      a = a->next;

      if (!a->ch || *s == a->ch) break;
      a = a->next;
    }

    if (!a->ch)
      break;
    else
     l++;
  }

  return l;
}
