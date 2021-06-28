int vla_simple_loop(unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = i*(i+1);
  }
  return v[0]+v[n-1];
}

// local declaration not on entry edge
int vla_midway_decl(int* a, unsigned n, int* b)
{
  if (n == 0)
    return 0;

  b[0] = a[0];
  int mx = a[0];
  for (unsigned i = 1; i < n; ++i) {
    MYmyDBG();
    b[i] = b[i-1] + a[i];
    if (a[i] > mx)
      mx = a[i];
  }
  int v[n];
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = (mx-a[i])*b[i];
  }
  return v[0] > v[n-1] ? v[0] : v[n-1];
}

// vla inside for loop -- simplified
int vla_in_loop(const char* s)
{
  int n = MYmystrlen(s);
  if (n <= 0) {
    return 0;
  }
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    MYmyInit(t, i);
    ret += t[0] + t[i-1];
  }
  return ret;
}
