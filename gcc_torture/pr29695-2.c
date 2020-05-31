#include"eqchecker_helper.h"
/* PR middle-end/29695 */

extern void Mymyabort (void);

int a = 128;
unsigned char b = 128;
long long c = 0x80000000LL;
unsigned int d = 0x80000000;

int
f1 (void)
{
  return (a & 0x80) ? 0x80 : 0;
}

int
f2 (void)
{
  return (b & 0x80) ? 0x80 : 0;
}

int
f3 (void)
{
  return (b & 0x80) ? 0x380 : 0;
}

int
f4 (void)
{
  return (b & 0x80) ? -128 : 0;
}

long long
f5 (void)
{
  return (c & 0x80000000) ? 0x80000000LL : 0LL;
}

long long
f6 (void)
{
  return (d & 0x80000000) ? 0x80000000LL : 0LL;
}

long long
f7 (void)
{
  return (d & 0x80000000) ? 0x380000000LL : 0LL;
}

long long
f8 (void)
{
  return (d & 0x80000000) ? -2147483648LL : 0LL;
}

int
main (void)
{
  if ((char) 128 != -128 || (int) 0x80000000 != -2147483648)
    return 0;
  if (f1 () != 128)
    Mymyabort ();
  if (f2 () != 128)
    Mymyabort ();
  if (f3 () != 896)
    Mymyabort ();
  if (f4 () != -128)
    Mymyabort ();
  if (f5 () != 0x80000000LL)
    Mymyabort ();
  if (f6 () != 0x80000000LL)
    Mymyabort ();
  if (f7 () != 0x380000000LL)
    Mymyabort ();
  if (f8 () != -2147483648LL)
    Mymyabort ();
  return 0;
}
