typedef struct list {
  unsigned val;
  struct list* next;
} list;

list* make_list(unsigned *arr, unsigned n) {
  list* l = 0;
  for (unsigned i = 0; i < n; ++i) {
    list* node = malloc(sizeof(list));
    node->val = arr[i];
    node->next = l;
    l = node;
  }
  return l;
}
