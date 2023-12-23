typedef struct list {
  unsigned val;
  struct list* next;
} list;

list* foo(list* l) {
  l->val = 42;
  l->next = 0;
  return l;
}
