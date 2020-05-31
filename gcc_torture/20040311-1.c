#include"eqchecker_helper.h"
/* Copyright (C) 2004 Free Software Foundation.

   Check that constant folding and RTL simplification of -(x >> y) doesn't
   break anything and produces the expected results.

   Written by Roger Sayle, 11th March 2004.  */

extern void Mymyabort (void);

#define INT_BITS  (sizeof(int)*8)

int test1(int x)
{
  return -(x >> (INT_BITS-1));
}

int test2(unsigned int x)
{
  return -((int)(x >> (INT_BITS-1)));
}

int test3(int x)
{
  int y;
  y = INT_BITS-1;
  return -(x >> y);
}

int test4(unsigned int x)
{
  int y;
  y = INT_BITS-1;
  return -((int)(x >> y));
}

int main()
{
  if (test1(0) != 0)
    Mymyabort ();
  if (test1(1) != 0)
    Mymyabort ();
  if (test1(-1) != 1)
    Mymyabort ();

  if (test2(0) != 0)
    Mymyabort ();
  if (test2(1) != 0)
    Mymyabort ();
  if (test2((unsigned int)-1) != -1)
    Mymyabort ();

  if (test3(0) != 0)
    Mymyabort ();
  if (test3(1) != 0)
    Mymyabort ();
  if (test3(-1) != 1)
    Mymyabort ();

  if (test4(0) != 0)
    Mymyabort ();
  if (test4(1) != 0)
    Mymyabort ();
  if (test4((unsigned int)-1) != -1)
    Mymyabort ();

  return 0;
}

