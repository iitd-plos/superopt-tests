unsigned foo(unsigned **x, unsigned n, unsigned m) {
  unsigned ret = 0;
  for (unsigned i = 0; i < n; ++i) {
    for (unsigned j = 0; j < m; ++j) {
      ret += x[i][j];
    }
  }
  return ret;
}
