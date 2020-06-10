int foo_vla(int *a, unsigned n)
{
  int v[n];
#pragma clang loop vectorize(disable)
  for (unsigned i = 0; i < n; ++i) {
    v[i] = a[i]*a[i];
  }
  return v[0]*v[n-1]*sizeof(v);
}

//void bar_vla(unsigned n, int a[*]);

int main(int argc, char* argv[])
{
  //int vla[argc];
  //bar_vla(argc, vla);
  //return vla[0]*vla[argc-1];
  return 0;
}

//void bar_vla(unsigned n, int a[n])
//{
//  for (unsigned i = 0; i < n; ++i) {
//    a[i] = i*i;
//  }
//}
