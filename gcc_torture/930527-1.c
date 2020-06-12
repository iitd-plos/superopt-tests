#include"eqchecker_helper.h"
f (unsigned char x)
{
  return (0x50 | (x >> 4)) ^ 0xff;
}

main ()
{
  if (f (0) != 0xaf)
    Mymyabort ();
  exit (0);
}
