int tiling(int n)
{
  if(n < 2)
    return 0;

  int i = 0;
  while(i < 20*n)
  {
    int j = i;
    while(j < i+4)
    {
      ++j;
    }
    i += 4;
  }
  return i;
}


int main()
{
  return 0;
}
