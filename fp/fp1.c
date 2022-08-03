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

float incr(float a)
{
  return ++a;
}

float add1(float a)
{
  return a + 1;
}

float sqradd(float a, float b)
{
  float s1 = a*a;
  float s2 = b*b;
  float r  = s1 + s2;

  return r;
}

