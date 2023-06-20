#include <stddef.h>

struct chunked_list {
    unsigned vals[4];
    struct chunked_list *next;
};

unsigned sum_list(struct chunked_list* l) {
  unsigned sum = 0;
  while (l) {
    sum += l->vals[0];
    sum += l->vals[1];
    sum += l->vals[2];
    sum += l->vals[3];

    l = l->next;
  }
  return sum;
}
