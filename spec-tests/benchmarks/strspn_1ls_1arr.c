#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strspn(struct list *s, const char *accept)
{
  size_t l = 0;
  const char *a;
  
  for (; s->ch; s = s->next) {
    for (a = accept; *a && s->ch != *a; a++);

    if (!*a)
      break;
    else
      l++;
  }

  return l;
}
