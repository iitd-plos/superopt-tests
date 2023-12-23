unsigned matfreq(unsigned **mat, unsigned m, unsigned n, unsigned x) {
  unsigned res = 0;
  for (unsigned i = 0; i < m; ++i) {
    unsigned j = 0;
    while (j < n) {
      if (mat[i][j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat[i][j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat[i][j] == x) ++res;
      ++j;

      if (j >= n) break;
      if (mat[i][j] == x) ++res;
      ++j;
    }
  }
  return res;
}
