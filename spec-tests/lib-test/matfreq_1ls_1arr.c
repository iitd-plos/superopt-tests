struct list {
  unsigned *row;
  struct list *next;
};

unsigned matfreq(struct list *mat, unsigned n, unsigned x) {
  unsigned res = 0;
  for (; mat; mat = mat->next) {
    for (unsigned j = 0; j < n; ++j) {
      if (mat->row[j] == x) ++res;
    }
  }
  return res;
}
