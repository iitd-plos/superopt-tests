#include <stddef.h>

struct chunked_list {
    unsigned vals[4];
    struct chunked_list *next;
};

unsigned vecdot(struct chunked_list *x, struct chunked_list *y) {
  unsigned res = 0;
  while (x) {
    for (unsigned i = 0; i < 4; ++i) {
      res += x->vals[i] * y->vals[i];
    }
    x = x->next;
    y = y->next;
  }
  return res;
}
