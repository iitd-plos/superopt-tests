int fib(int n)
{
    int f[n+2];
    int i;
    f[0] = 0;
    f[1] = 1;
    for(i = 2; i <= n; i++)
    {
       f[i] = f[i - 1] + f[i - 2];
    }
    return f[n];
}


/*
int fib(int n)
{
    int f[n+1];
    int i;
 
#pragma clang loop vectorize(disable) unroll(disable)
    for(i = 0; i <= n; i++)
    {
      if(i == 0) f[i] = 0;
      else if(i == 1) f[i] = 1;
      else f[i] = f[i - 1] + f[i - 2];
    }
    return f[n];
}*/
/*
int foo(unsigned n) {                                             
 int r = 0;                                                       
 if (!n) return r;                                                
 int x[n];                                                        
 x[0] = 0;                                                        
 for (int i=0 ; i<n; ++i)                                         
   x[i] = x[i/2] + i;                                             
 r = x[n-1];                                                      
 return r;                                                        
} 

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
}*/
