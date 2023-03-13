struct list {
  unsigned val;
  struct list *next;
};

unsigned matfreq(struct list **mat, unsigned m, unsigned x) {
  struct list *row;
  unsigned res = 0;
  for (unsigned i = 0; i < m; ++i) {
    row = mat[i];
    while (row) {
      if (row->val == x) ++res;
      row = row->next;

      if (!row) break;
      if (row->val == x) ++res;
      row = row->next;

      if (!row) break;
      if (row->val == x) ++res;
      row = row->next;

      if (!row) break;
      if (row->val == x) ++res;
      row = row->next;
    }
  }
  return res;
}
