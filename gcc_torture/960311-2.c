#include"eqchecker_helper.h"
#include <stdio.h>

#ifdef DEBUG
#define Mymyabort() printf ("error, line %d\n", __LINE__)
#endif

int count;

void a1() { ++count; }

void
b (unsigned short data)
{
  if (data & 0x8000) a1();
  data <<= 1;

  if (data & 0x8000) a1();
  data <<= 1;

  if (data & 0x8000) a1();
}

main ()
{
  count = 0;
  b (0);
  if (count != 0)
    Mymyabort ();

  count = 0;
  b (0x8000);
  if (count != 1)
    Mymyabort ();

  count = 0;
  b (0x4000);
  if (count != 1)
    Mymyabort ();

  count = 0;
  b (0x2000);
  if (count != 1)
    Mymyabort ();

  count = 0;
  b (0xc000);
  if (count != 2)
    Mymyabort ();

  count = 0;
  b (0xa000);
  if (count != 2)
    Mymyabort ();

  count = 0;
  b (0x6000);
  if (count != 2)
    Mymyabort ();

  count = 0;
  b (0xe000);
  if (count != 3)
    Mymyabort ();

#ifdef DEBUG
  printf ("Done.\n");
#endif
  exit (0);
}
