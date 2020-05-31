#include"eqchecker_helper.h"
/* Copyright (C) 2002 Free Software Foundation.

   Test for correctness of composite comparisons.

   Written by Roger Sayle, 3rd June 2002.  */

extern void Mymyabort (void);

int ieq (int x, int y, int ok)
{
  if ((x<=y) && (x>=y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();

  if ((x<=y) && (x==y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();

  if ((x<=y) && (y<=x))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();

  if ((y==x) && (x<=y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int ine (int x, int y, int ok)
{
  if ((x<y) || (x>y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int ilt (int x, int y, int ok)
{
  if ((x<y) && (x!=y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int ile (int x, int y, int ok)
{
  if ((x<y) || (x==y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int igt (int x, int y, int ok)
{
  if ((x>y) && (x!=y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int ige (int x, int y, int ok)
{
  if ((x>y) || (x==y))
    {
      if (!ok) Mymyabort ();
    }
  else
    if (ok) Mymyabort ();
}

int
main ()
{
  ieq (1, 4, 0);
  ieq (3, 3, 1);
  ieq (5, 2, 0);

  ine (1, 4, 1);
  ine (3, 3, 0);
  ine (5, 2, 1);

  ilt (1, 4, 1);
  ilt (3, 3, 0);
  ilt (5, 2, 0);

  ile (1, 4, 1);
  ile (3, 3, 1);
  ile (5, 2, 0);

  igt (1, 4, 0);
  igt (3, 3, 0);
  igt (5, 2, 1);

  ige (1, 4, 0);
  ige (3, 3, 1);
  ige (5, 2, 1);

  return 0;
}

