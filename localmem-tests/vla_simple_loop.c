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
