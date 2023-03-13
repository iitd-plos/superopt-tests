#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

struct list *strpbrk(struct list *s, struct list *accept) {
  register struct list *a;

  for (; s->ch; s = s->next) {
    a = accept;
    while (a->ch) {
      if (s->ch == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (s->ch == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (s->ch == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (s->ch == a->ch) return s;
      a = a->next;
    } 
  }
  return 0;
}
