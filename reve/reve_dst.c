int digit10(unsigned n)
{
  unsigned r = 1;

  do {
    if (n < 10)    return r;
    if (n < 100)   return r+1;
    if (n < 1000)  return r+2;
    if (n < 10000) return r+3;
    
    n /= 10000;
    r += 4;
  } while (1);
}

void propagate(int* a, int n)
{
  int k = 0;
  while (k+1 < n) {
    a[k+1] = a[0];
    k++;
  }
}

int garr[100];

int main(int argc, char* argv[])
{
  propagate(garr, sizeof garr / sizeof(int));
  return digit10(argc);
}
