struct list {
  unsigned val;
  struct list *next;
};

unsigned matfreq(struct list **mat, unsigned m, unsigned x) {
  struct list *row;
  unsigned res = 0;
  for (unsigned i = 0; i < m; ++i) {
    for (row = mat[i]; row; row = row->next) {
      if (row->val == x) ++res;
    }
  }
  return res;
}
