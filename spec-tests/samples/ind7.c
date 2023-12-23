typedef struct list {
  unsigned val;
  struct list* next;
} list;

list* make_node(unsigned val) {
  list* node = malloc(sizeof(list));
  node->val = val;
  node->next = 0;
  return node;
}
