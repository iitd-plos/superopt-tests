typedef struct list {
  unsigned val;
  struct list* next;
} list;

unsigned head_or(list* l, unsigned val) {
  return l ? l->val : val;
}
