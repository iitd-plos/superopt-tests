#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

char *strpbrk(const char *s, struct list *accept) {
  register struct list *a;

  for (; *s; s++) {
    a = accept;
    while (a->ch) {
      if (*s == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (*s == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (*s == a->ch) return s;
      a = a->next;

      if (!a->ch) break;
      if (*s == a->ch) return s;
      a = a->next;
    } 
  }
  return 0;
}
