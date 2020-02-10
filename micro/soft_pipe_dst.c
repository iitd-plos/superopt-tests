int soft_pipe(int n, char* a, char* b, char* c)
{
  if(n < 2)
    return 0;

  a[0] += 1;
  b[0] += a[0];
  a[1] += 1;
  int i = 0;
  while(i < n - 2)
  {
    a[i+2] += 1;
    b[i+1] += a[i+1];
    c[i] += b[i];
    i++;
  }
  c[i] += b[i];
  b[i+1] += a[i+1];
  c[i+1] += b[i+1];
  return i+2;
}


int main()
{
  return 0;
}
