struct chunked_list {
  unsigned vals[4];
  struct chunked_list *next;
};

unsigned matfreq(struct chunked_list **mat, unsigned m, unsigned x) {
  struct chunked_list *row;
  unsigned res = 0;
  for (unsigned i = 0; i < m; ++i) {
    for (row = mat[i]; row; row = row->next) {
      if (row->vals[0] == x) ++res;
      if (row->vals[1] == x) ++res;
      if (row->vals[2] == x) ++res;
      if (row->vals[3] == x) ++res;
    }
  }
  return res;
}
