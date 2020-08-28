#include"eqchecker_helper.h"
/* { dg-require-effective-target trampolines } */

extern void Mymyabort (void);
extern void exit (int);

static void recursive (int n, void (*proc) (void))
{
  __label__ l1;

  void do_goto (void)
  {
    goto l1;
  }

  if (n == 3)
      recursive (n - 1, do_goto);
  else if (n > 0)
    recursive (n - 1, proc);
  else
    (*proc) ();
  return;

l1:
  if (n == 3)
    exit (0);
  else
    Mymyabort ();
}

int main ()
{
  recursive (10, Mymyabort);
  Mymyabort ();
}