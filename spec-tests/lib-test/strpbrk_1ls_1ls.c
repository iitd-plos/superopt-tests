#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct list *strpbrk(struct list *s, struct list *accept) {
  register struct list *a;

  for (; s->ch; s = s->next) {
    for (a = accept; a->ch; a = a->next) {
      if (s->ch == a->ch)
        return s;
    }    
  }
  return 0;
}
