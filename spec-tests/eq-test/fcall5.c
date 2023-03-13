unsigned foo(unsigned **arr, unsigned n, unsigned m) {
  unsigned x = 0;
  for (unsigned i = 0; i < n; ++i) {
    for (unsigned j = 0; j < m; ++j) {
      x += arr[i][j];
    }
  }
  return x;
}

unsigned bar (unsigned **arr1, unsigned **arr2, unsigned n, unsigned m) {
  return foo(arr1, n, m) + foo(arr2, n, m);
}
