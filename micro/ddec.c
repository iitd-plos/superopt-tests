int x,y;
// closed-form computation by clang; store sinking by gcc and icc
//void ddai(int n)
//{
//  x=0; y=0; 
//  int i=0; 
//  while (i < n)
//  { 
//    y = y+1; 
//    x = x+y; 
//    i++;
//  }
//}

int ddec(int x, int n)
{
  int i, k = 0;
  int y = x;
  for (i=0; i!=n; ++i)
  {
    y += k*5;
    k += 1;
    if (i >= 5)
      k += 3;
  }
  return y;
}

#define LOOP_N 10000

int main()
{
  int ret = 0;
  for(int i = 0; i < LOOP_N; ++i)
    ret += ddec(i, i);
  return ret;
}

