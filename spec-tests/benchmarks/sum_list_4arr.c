unsigned sum_list(unsigned* arr, unsigned n) {
  unsigned sum = 0;
  unsigned i = 0;
  while (i < n) {
    sum += arr[i];
    ++i;

    if (i >= n) break;
    sum += arr[i];
    ++i;

    if (i >= n) break;
    sum += arr[i];
    ++i;

    if (i >= n) break;
    sum += arr[i];
    ++i;
  }
  return sum;
}
