#include <stdlib.h>
#include <stdio.h>
#include <string.h>

void *MYmymalloc(size_t size);
int MYmyprintf(const char *format, ...);
int MYmyrand();

void quicksort_orig(int lo, int hi, int * base)
{ 
  int i,j;
  int pivot,temp;
    
  if (lo<hi)
  {
    for (i=lo,j=hi,pivot=base[hi];i<j;)
    {
      while (i<hi && base[i]<=pivot) i++;
      while (j>lo && base[j]>=pivot) j--;
      if (i<j) { temp=base[i]; base[i]=base[j]; base[j]=temp; }
    }
    temp=base[i]; base[i]=base[hi]; base[hi]=temp;
    quicksort_orig(lo,i-1,base);  quicksort_orig(i+1,hi,base);
  }
}

void swap(int* base, int i, int j)
{
  int temp = base[i];
  base[i] = base[j];
  base[j] = temp;
}

void quicksort(int lo, int hi, int* base)
{
  int i,j;
  int pivot;

  if (lo<hi)
  {
    for (i=lo,j=hi,pivot=base[hi];i<j;)
    {
      while (i<hi && base[i]<=pivot) i++;
      while (j>lo && base[j]>=pivot) j--;
      if (i<j) { swap(base, i, j); }
    }
    swap(base, i, hi);
    quicksort(lo,i-1,base);  quicksort(i+1,hi,base);
  }
}

int cmpint(const void * i, const void * j)
{
  int vi = *((int *) i);
  int vj = *((int *) j);
  if (vi == vj) return 0;
  if (vi < vj) return -1;
  return 1;
}

void rand_init(int* a, int* b, int n)
{
  for (int i = 0; i < n; i++) b[i] = a[i] = MYmyrand() & 0xFFFF;
}

int equal_array(int* a, int* b, int n)
{
    while (n-- > 0) {
      if (*a++ != *b++) return 1;
    }
    return 0;
}

int main(int argc, char* argv[])
{
  if (argc < 2) {
    return 1;
  }

  int i;
  int * a, * b;
  int bench = argc > 2 ? 1 : 0;
  int n = atoi(argv[1]);

  a = MYmymalloc(n * sizeof(int));
  b = MYmymalloc(n * sizeof(int));
  rand_init(a, b, n);
  quicksort(0, n - 1, a);
  if (!bench) {
    qsort(b, n, sizeof(int), cmpint);
    if (equal_array(a, b, n)) {
      MYmyprintf("Bug!\n"); return 2;
    }
    MYmyprintf("OK\n");
  }
  return 0;
}

int quicksort_char(int lo, int hi, char base[])
{
  int i,j;
  char pivot,temp;
  //base = 0;

  if (lo<hi)
  {
    for (i=lo,j=hi,pivot=base[hi];i<j;)
    {
      while (i<hi && base[i]<=pivot) i++;
      while (j>lo && base[j]>=pivot) j--;
      if (i<j)
      {
        temp=base[i]; base[i]=base[j]; base[j]=temp;
      }
    }
    temp=base[i]; base[i]=base[hi]; base[hi]=temp;
    quicksort_char(lo,i-1,base);  quicksort_char(i+1,hi,base);
  }
  return 0;
}
