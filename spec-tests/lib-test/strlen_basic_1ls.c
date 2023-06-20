#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strlen(struct list *l) {
  register size_t i;
  for (i=0; l->ch; l = l->next) ++i;
  return i;
}
