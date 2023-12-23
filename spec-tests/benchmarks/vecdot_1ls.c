#include <stddef.h>

struct list {
  unsigned val;
  struct list *next;
};

unsigned vecdot(struct list *x, struct list *y) {
  unsigned res = 0;
  while (x) {
    res += x->val * y->val;
    x = x->next;
    y = y->next;
  }
  return res;
}
