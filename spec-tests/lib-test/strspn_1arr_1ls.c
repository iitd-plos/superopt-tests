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
    for (a = accept; a->ch && *s != a->ch; a = a->next);

    if (!a->ch)
      break;
    else
     l++;
  }

  return l;
}
