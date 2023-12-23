unsigned sum_list(unsigned* arr, unsigned n) {
  unsigned sum = 0;
  for (unsigned i = 0; i < n; ++i) {
    sum += arr[i];
  }
  return sum;
}
