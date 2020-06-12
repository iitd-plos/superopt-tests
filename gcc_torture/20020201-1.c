#include"eqchecker_helper.h"
/* Test whether division by constant works properly.  */

extern void Mymyabort (void);
extern void exit (int);

unsigned char cx = 7;
unsigned short sx = 14;
unsigned int ix = 21;
unsigned long lx = 28;
unsigned long long Lx = 35;

int
main ()
{
  unsigned char cy;
  unsigned short sy;
  unsigned int iy;
  unsigned long ly;
  unsigned long long Ly;
  
  cy = cx / 6; if (cy != 1) Mymyabort ();
  cy = cx % 6; if (cy != 1) Mymyabort ();

  sy = sx / 6; if (sy != 2) Mymyabort ();
  sy = sx % 6; if (sy != 2) Mymyabort ();

  iy = ix / 6; if (iy != 3) Mymyabort ();
  iy = ix % 6; if (iy != 3) Mymyabort ();

  ly = lx / 6; if (ly != 4) Mymyabort ();
  ly = lx % 6; if (ly != 4) Mymyabort ();

  Ly = Lx / 6; if (Ly != 5) Mymyabort ();
  Ly = Lx % 6; if (Ly != 5) Mymyabort ();

  exit(0);
}
