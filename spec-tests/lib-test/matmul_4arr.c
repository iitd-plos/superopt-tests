unsigned dot(unsigned *x, unsigned *y, unsigned n) {
  unsigned res = 0;
  for (unsigned i = 0; i < n; i += 4) {
    res += x[i] * y[i];

    if (i+1 >= n) break;
    res += x[i+1] * y[i+1];

    if (i+2 >= n) break;
    res += x[i+2] * y[i+2];

    if (i+3 >= n) break;
    res += x[i+3] * y[i+3];
  }
  return res;
}