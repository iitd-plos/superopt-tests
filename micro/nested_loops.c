
int nested_loops2(int n)
{
  int ret = 0;
  int i, j;
  for (i=0; i < n; ++i)
  {
    for (j=i; j < n; ++j)
      ++ret;
  }
  return ret;
}

int nested_loops2_1(int n, int m)
{
  int ret = 0;
  int i, j;
  for (i=0; i < n; ++i)
  {
    for (j=i; j < m; ++j)
      ++ret;
  }
  return ret;
}

int nested_loops3(int n, int m, char* a, char* b)
{
  int i, j;
  for (i=0; i < n; ++i)
  {
    for (j=0; j < m; ++j)
      a[i*m+j] = 0;

    b[i] = 0;
  }
  return 0;
}

int main()
{
  return 0;
}
