unsigned matfreq(unsigned *mat, unsigned m, unsigned n, unsigned x) {
  unsigned res = 0;
  for (unsigned i = 0; i < m; ++i) {
    for (unsigned j = 0; j < n; ++j) {
      if (mat[i+j*m] == x) ++res;
    }
  }
  return res;
}
