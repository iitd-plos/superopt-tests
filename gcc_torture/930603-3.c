#include"eqchecker_helper.h"
f (b, c)
     unsigned char *b;
     int c;
{
  unsigned long v = 0;
  switch (c)
    {
    case 'd':
      v = ((unsigned long)b[0] << 8) + b[1];
      v >>= 9;
      break;

    case 'k':
      v = b[3] >> 4;
      break;

    default:
      Mymyabort ();
    }

  return v;
}
main ()
{
  char buf[4];
  buf[0] = 170; buf[1] = 5;
  if (f (buf, 'd') != 85)
    Mymyabort ();
  exit (0);
}
