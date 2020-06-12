#include"eqchecker_helper.h"
#define FALSE 140
#define TRUE 13

feq (x)
     long long int x;
{
  if (x == 0)
    return TRUE;
  else
    return FALSE;
}

fne (x)
     long long int x;
{
  if (x != 0)
    return TRUE;
  else
    return FALSE;
}

flt (x)
     long long int x;
{
  if (x < 0)
    return TRUE;
  else
    return FALSE;
}

fge (x)
     long long int x;
{
  if (x >= 0)
    return TRUE;
  else
    return FALSE;
}

fgt (x)
     long long int x;
{
  if (x > 0)
    return TRUE;
  else
    return FALSE;
}

fle (x)
     long long int x;
{
  if (x <= 0)
    return TRUE;
  else
    return FALSE;
}

main ()
{
  if (feq (0LL) != TRUE)
    Mymyabort ();
  if (feq (-1LL) != FALSE)
    Mymyabort ();
  if (feq (0x8000000000000000LL) != FALSE)
    Mymyabort ();
  if (feq (0x8000000000000001LL) != FALSE)
    Mymyabort ();
  if (feq (1LL) != FALSE)
    Mymyabort ();
  if (feq (0x7fffffffffffffffLL) != FALSE)
    Mymyabort ();

  if (fne (0LL) != FALSE)
    Mymyabort ();
  if (fne (-1LL) != TRUE)
    Mymyabort ();
  if (fne (0x8000000000000000LL) != TRUE)
    Mymyabort ();
  if (fne (0x8000000000000001LL) != TRUE)
    Mymyabort ();
  if (fne (1LL) != TRUE)
    Mymyabort ();
  if (fne (0x7fffffffffffffffLL) != TRUE)
    Mymyabort ();

  if (flt (0LL) != FALSE)
    Mymyabort ();
  if (flt (-1LL) != TRUE)
    Mymyabort ();
  if (flt (0x8000000000000000LL) != TRUE)
    Mymyabort ();
  if (flt (0x8000000000000001LL) != TRUE)
    Mymyabort ();
  if (flt (1LL) != FALSE)
    Mymyabort ();
  if (flt (0x7fffffffffffffffLL) != FALSE)
    Mymyabort ();

  if (fge (0LL) != TRUE)
    Mymyabort ();
  if (fge (-1LL) != FALSE)
    Mymyabort ();
  if (fge (0x8000000000000000LL) != FALSE)
    Mymyabort ();
  if (fge (0x8000000000000001LL) != FALSE)
    Mymyabort ();
  if (fge (1LL) != TRUE)
    Mymyabort ();
  if (fge (0x7fffffffffffffffLL) != TRUE)
    Mymyabort ();

  if (fgt (0LL) != FALSE)
    Mymyabort ();
  if (fgt (-1LL) != FALSE)
    Mymyabort ();
  if (fgt (0x8000000000000000LL) != FALSE)
    Mymyabort ();
  if (fgt (0x8000000000000001LL) != FALSE)
    Mymyabort ();
  if (fgt (1LL) != TRUE)
    Mymyabort ();
  if (fgt (0x7fffffffffffffffLL) != TRUE)
    Mymyabort ();

  if (fle (0LL) != TRUE)
    Mymyabort ();
  if (fle (-1LL) != TRUE)
    Mymyabort ();
  if (fle (0x8000000000000000LL) != TRUE)
    Mymyabort ();
  if (fle (0x8000000000000001LL) != TRUE)
    Mymyabort ();
  if (fle (1LL) != FALSE)
    Mymyabort ();
  if (fle (0x7fffffffffffffffLL) != FALSE)
    Mymyabort ();

  exit (0);
}
