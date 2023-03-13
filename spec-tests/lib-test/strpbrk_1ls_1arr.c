#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct list *strpbrk(struct list *s, const char *accept) {
  register unsigned int i;
  
  for (; s->ch; s = s->next) {
    for (i = 0; accept[i]; i++)
      if (s->ch == accept[i])
        return s;
  }
  return 0;
}
