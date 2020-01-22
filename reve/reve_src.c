int garr[100];
int *gto, *gfrom;

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

// harvest fail for reve_dst:send
/*void send(short *to, short* from, int count)
{
  if (count <= 0) {
    return;
  }
  do {
    *to = *from++;
  } while (--count > 0);
}*/

int main(int argc, char* argv[])
{
  propagate(garr, sizeof garr / sizeof(int));
  return digit10(argc);
}
