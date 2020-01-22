int garr[100];
int *gto, *gfrom;

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

// memory safety check fails due to a[0]
void propagate(int* a, int n)
{
  int k = 0;
  while (k+1 < n) {
    a[k+1] = a[0];
    k++;
  }
}

// using Duff's device (https://en.wikipedia.org/wiki/Duff%27s_device)
// harvest fails on clang's output which creates a jump of the form [rodata_addr+esi*4]
/*void send(short* to, short* from, int count)
{
  if (count <= 0) {
    return;
  }
  unsigned n = (count+7)/8;
  switch (count % 8) {
    case 0: do { *to = *from++;
    case 7:      *to = *from++;
    case 6:      *to = *from++;
    case 5:      *to = *from++;
    case 4:      *to = *from++;
    case 3:      *to = *from++;
    case 2:      *to = *from++;
    case 1:      *to = *from++;
            } while (--n > 0);
  }
}*/

int main(int argc, char* argv[])
{
  propagate(garr, sizeof garr / sizeof(int));
  return digit10(argc);
}
