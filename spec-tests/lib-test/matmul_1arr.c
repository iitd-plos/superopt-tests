unsigned dot(unsigned *x, unsigned *y, unsigned n) {
  unsigned res = 0;
  for (unsigned i = 0; i < n; ++i) {
    res += x[i] * y[i];
  }
  return res;
}