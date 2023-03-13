#include <stddef.h>

struct chunked_list {
    unsigned vals[4];
    struct chunked_list *next;
};

unsigned vecdot(struct chunked_list *x, struct chunked_list *y) {
  unsigned res = 0;
  while (x) {
    res += x->vals[0] * y->vals[0];
    res += x->vals[1] * y->vals[1];
    res += x->vals[2] * y->vals[2];
    res += x->vals[3] * y->vals[3];
    x = x->next;
    y = y->next;
  }
  return res;
}
