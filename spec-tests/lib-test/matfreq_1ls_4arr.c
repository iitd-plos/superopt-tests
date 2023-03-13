struct list {
  unsigned *row;
  struct list *next;
};

unsigned matfreq(struct list *mat, unsigned n, unsigned x) {
  unsigned res = 0;
  for (; mat; mat = mat->next) {
    unsigned j = 0;
    while (j < n) {
      if (mat->row[j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat->row[j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat->row[j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat->row[j] == x) ++res;
      ++j;
    }
  }
  return res;
}
