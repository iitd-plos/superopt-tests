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

