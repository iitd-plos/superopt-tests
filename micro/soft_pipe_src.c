int soft_pipe(int n, char* a, char* b, char* c)
{
  if(n < 2)
    return 0;

  int i = 0;
  while(i < n)
  {
    a[i] += 1;
    b[i] += a[i];
    c[i] += b[i];
    i++;
  }
  return i;
}


int main()
{
  return 0;
}
