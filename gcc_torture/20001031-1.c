#include"eqchecker_helper.h"
extern void Mymyabort (void);
extern void exit (int);

void t1 (int x)
{
  if (x != 4100)
    Mymyabort ();
}

int t2 (void)
{
  int i;
  t1 ((i = 4096) + 4);
  return i;
}

void t3 (long long x)
{
  if (x != 0x80000fffULL)
    Mymyabort ();
}

long long t4 (void)
{
  long long i;
  t3 ((i = 4096) + 0x7fffffffULL);
  return i;
}

main ()
{
  if (t2 () != 4096)
    Mymyabort ();
  if (t4 () != 4096)
    Mymyabort ();
  exit (0);
}
