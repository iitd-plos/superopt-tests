/* simple functions using floating-types without loops and calls */

float max(float a, float b)
{
  if(a >= b)
    return a;
  else
    return b;
}

float sign(float a)
{
  return -a;
}

float abs1(float a)
{
  if(a < 0)
    a = -a;

  return a;
}

float abs_max(float a, float b)
{
  if(a < 0)
    a = -a;

  if(b < 0)
    b = -b;

  if(a >= b)
    return a;
  else
    return b;
}

float add1(float a)
{
  return a + 1;
}

float sub1(float a)
{
  return a - 1;
}

float sqradd(float a, float b)
{
  float s1 = a*a;
  float s2 = b*b;
  float r  = s1 + s2;

  return r;
}

int quadruple_lt(float a[], float b[])
{
  return (a[0] < b[0]) && (a[1] < b[1]) && (a[2] < b[2]) && (a[3] < b[3]);
}

float add_const(float a)
{
  return a + 3.14159;
}

/*double add_const(double a)
{
  return a + 3.14159;
}*/

float mult_const(float a)
{
  return a * 3.14159;
}

int cmp_const(float a)
{
  return a == 3.14159 || 2*a > 1.41;
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

float expr1()
{
  return 1.0/3;
}

float expr2(float a)
{
  float b = 0.12345;

  return a/b + (a*a)/(b*b) + (a*a*a)/(b*b*b);
}

float expr3(float a)
{
  return (3.1*a*a + 2.5*a + 7.9) / (0.9*a*a + 6.5*a + 8.4);
}

float const_expr()
{
  float f = 0.316438636889084;

  return f + f*f + 1/f + 1/(f*f);
}

float near_zero()
{
  float f = 0.00000000000000000001;

  return f*f*f*f*f;
}

float exceeds_range()
{
  float f = 100000000000000000000.0;

  return f*f*f*f*f;
}

float invalid1(float a)
{
  if(a == 0.45)
    return (a*a + 3.1*a)/(a - 0.45);
  else
    return 0;
}

float invalid2(float a)
{
  return a/0; //inf for nonzero a
}

float invalid3()
{
  return 0.0/0; //-nan
}

