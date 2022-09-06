int quadruple_lt(float a[], float b[])
{
  return (a[0] < b[0]) && (a[1] < b[1]) && (a[2] < b[2]) && (a[3] < b[3]);
}

float diff1(float a, float b)
{
  float d;

  d = a - b;

  if(d < 0)
    d = -d;

  return d;
}

float diff2(float a[], float b[])
{
  float d1, d2;

  d1 = a[0] - b[0];
  d2 = a[1] - b[1];

  if(d1 < 0)
    d1 = -d1;

  if(d2 < 0)
    d2 = -d2;

  return d1 + d2;
}

void sort3(float a[])
{
#define SWAP(i, j)     \
{                      \
  if(a[i] > a[j])      \
  {                    \
    t = a[i];          \
    a[i] = a[j];       \
    a[j] = t;          \
  }                    \
}
  float t;

  SWAP(0, 1)
  SWAP(1, 2)
  SWAP(0, 1)
}

