typedef struct list {
  unsigned val;
  struct list* next;
} list;

unsigned foo(list* l) {
  unsigned sum = 0;
  while (l) {
    sum += l->val;
    l = l->next;
  }
  return sum;
}
