unsigned foo(unsigned *x, unsigned n) {
  unsigned ret = 0;
  for (unsigned i = 0; i < n; ++i) {
    ret += x[i];
  }
  return ret;
}
