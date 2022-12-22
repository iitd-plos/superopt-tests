void MYmyDBG();
int MYmyfoo(int*, int*, int*, int*, unsigned);
int vla_4_inside_loop(int *a, unsigned n)
{
  int ret = 0;
  for (unsigned i = 1; i < n; ++i) {
   MYmyDBG();
   int v[4*i];
   int w[4*i];
   int x[4*i];
   int y[4*i];
   ret += MYmyfoo(v,w,x,y,i);
  }
  return ret;
}
