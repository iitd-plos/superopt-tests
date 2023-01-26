// local declaration not on entry edge
int vla_midway_decl(int* a, unsigned n, int* b)
{
  if (n == 0)
    return 0;

  b[0] = a[0];
  for (unsigned i = 1; i < n; ++i) {
    MYmyDBG();
    b[i] = b[i-1] + a[i];
  }
  int v[n];
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = a[i]*b[i];
  }
  return v[0] > v[n-1] ? v[0] : v[n-1];
}
