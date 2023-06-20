#include <stddef.h>

struct list {
  char ch;
  struct list *next;
};

size_t strlen(struct list *l) {
  size_t i = 0;
  while (l->ch) {
    l = l->next;
    ++i;

    if (!l->ch) break;
    l = l->next;
    ++i;

    if (!l->ch) break;
    l = l->next;
    ++i;

    if (!l->ch) break;
    l = l->next;
    ++i;
  }
  return i;
}