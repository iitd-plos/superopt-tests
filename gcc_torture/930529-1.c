#include"eqchecker_helper.h"
/* { dg-options { "-fwrapv" } } */

extern void Mymyabort (void);
extern void exit (int);

int dd (int x, int d) { return x / d; }

int
main ()
{
  int i;
  for (i = -3; i <= 3; i++)
    {
      if (dd (i, 1) != i / 1)
	Mymyabort ();
      if (dd (i, 2) != i / 2)
	Mymyabort ();
      if (dd (i, 3) != i / 3)
	Mymyabort ();
      if (dd (i, 4) != i / 4)
	Mymyabort ();
      if (dd (i, 5) != i / 5)
	Mymyabort ();
      if (dd (i, 6) != i / 6)
	Mymyabort ();
      if (dd (i, 7) != i / 7)
	Mymyabort ();
      if (dd (i, 8) != i / 8)
	Mymyabort ();
    }
  for (i = ((unsigned) ~0 >> 1) - 3; i <= ((unsigned) ~0 >> 1) + 3; i++)
    {
      if (dd (i, 1) != i / 1)
	Mymyabort ();
      if (dd (i, 2) != i / 2)
	Mymyabort ();
      if (dd (i, 3) != i / 3)
	Mymyabort ();
      if (dd (i, 4) != i / 4)
	Mymyabort ();
      if (dd (i, 5) != i / 5)
	Mymyabort ();
      if (dd (i, 6) != i / 6)
	Mymyabort ();
      if (dd (i, 7) != i / 7)
	Mymyabort ();
      if (dd (i, 8) != i / 8)
	Mymyabort ();
    }
  exit (0);
}
