#include"eqchecker_helper.h"
#define F 140
#define T 13

feq (x, y)
     long long int x;
     long long int y;
{
  if (x == y)
    return T;
  else
    return F;
}

fne (x, y)
     long long int x;
     long long int y;
{
  if (x != y)
    return T;
  else
    return F;
}

flt (x, y)
     long long int x;
     long long int y;
{
  if (x < y)
    return T;
  else
    return F;
}

fge (x, y)
     long long int x;
     long long int y;
{
  if (x >= y)
    return T;
  else
    return F;
}

fgt (x, y)
     long long int x;
     long long int y;
{
  if (x > y)
    return T;
  else
    return F;
}

fle (x, y)
     long long int x;
     long long int y;
{
  if (x <= y)
    return T;
  else
    return F;
}

fltu (x, y)
     unsigned long long int x;
     unsigned long long int y;
{
  if (x < y)
    return T;
  else
    return F;
}

fgeu (x, y)
     unsigned long long int x;
     unsigned long long int y;
{
  if (x >= y)
    return T;
  else
    return F;
}

fgtu (x, y)
     unsigned long long int x;
     unsigned long long int y;
{
  if (x > y)
    return T;
  else
    return F;
}

fleu (x, y)
     unsigned long long int x;
     unsigned long long int y;
{
  if (x <= y)
    return T;
  else
    return F;
}

long long args[] =
{
  0LL,
  1LL,
  -1LL,
  0x7fffffffffffffffLL,
  0x8000000000000000LL,
  0x8000000000000001LL,
  0x1A3F237394D36C58LL,
  0x93850E92CAAC1B04LL
};

int correct_results[] =
{
  T, F, F, T, F, T, F, T, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, F, T, T, F,
  T, F, F, T, F, T, F, T, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  T, F, F, T, F, T, F, T, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, T, F, F, T,
  T, F, F, T, F, T, F, T, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  T, F, F, T, F, T, F, T, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  T, F, F, T, F, T, F, T, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, F, T, T, F, T, F, F, T,
  T, F, F, T, F, T, F, T, F, T,
  F, T, F, T, T, F, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  F, T, T, F, F, T, T, F, F, T,
  F, T, T, F, F, T, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, F, T, T, F, F, T, T, F,
  F, T, T, F, F, T, F, T, T, F,
  T, F, F, T, F, T, F, T, F, T
};

main ()
{
  int i, j, *res = correct_results;

  for (i = 0; i < 8; i++)
    {
      long long arg0 = args[i];
      for (j = 0; j < 8; j++)
	{
	  long long arg1 = args[j];

	  if (feq (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fne (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (flt (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fge (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fgt (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fle (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fltu (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fgeu (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fgtu (arg0, arg1) != *res++)
	    Mymyabort ();
	  if (fleu (arg0, arg1) != *res++)
	    Mymyabort ();
	}
    }
  exit (0);
}
