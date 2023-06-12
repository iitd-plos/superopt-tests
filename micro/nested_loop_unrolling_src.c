int nested_loop_unrolling(int **a, int n, int m)
{
  for (int i = 0; i<n; i++) {
    int j = 0;
    while (j < m) {
      a[i][j] = i;
      j++;
    }
  }
  return 0;
}
