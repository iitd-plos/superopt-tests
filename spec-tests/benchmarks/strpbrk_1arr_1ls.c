#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

char *strpbrk(const char *s, struct list *accept) {
  register struct list *a;

  for (; *s; s++) {
    for (a = accept; a->ch; a = a->next) {
      if (*s == a->ch)
        return s;
    }    
  }
  return 0;
}
