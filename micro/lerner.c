int lerner1a(int x, int n)
{
  int i, k = 0;
  for (i=0; i!=n; ++i)
  { 
    x += k*5; 
    k += 1;
    if (i >= 5) 
      k += 3;
  } 
  return x; 
}

int lerner1b(int x, int n)
{
  int i, k = 0;
  for (i=0; i!=n; ++i)
  { 
    x += k; 
    k += 5;
    if (i >= 5) 
      k += 15;
  } 
  return x; 
}

int sum_ler_3b3c;
//// closed-form computation by gcc and clang; store sinking by icc
//int lerner3b( )
//{
//  int i,j;
//  int sum =0;
//  for (i = 0; i < 10; i++)
//  {
//    for (j = 0; j < 10; j++)
//    {
//      sum++;
//      sum_ler_3b3c += sum;
//    }
//  }
//}

//// closed-form computation by gcc and clang; store sinking by icc
//int lerner3c( )
//{
//  int i,j;
//  for (i = 0; i < 10; i++)
//  {
//    for (j = 0; j < 10; j++)
//    {
//      sum_ler_3b3c += i*10 + j;
//    }
//  }
//}

int main()
{
  return 0;
}
