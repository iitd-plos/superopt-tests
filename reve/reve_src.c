int digit10(unsigned n)
{
  unsigned r = 0;
  do {
    n /= 10;
    r++;
  } while (n > 0);
  return r;
}

void propagate(int* a, int n)
{
  int k = 0;
  while (k+1 < n) {
    a[k+1] = a[k];
    k++;
  }
}

int garr[100];

int main(int argc, char* argv[])
{
  propagate(garr, sizeof garr / sizeof(int));
  return digit10(argc);
}
