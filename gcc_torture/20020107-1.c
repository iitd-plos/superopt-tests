#include"eqchecker_helper.h"
/* This testcase failed because - 1 - buf was simplified into ~buf and when
   later expanding it back into - buf + -1, -1 got lost.  */
/* { dg-options "-fgnu89-inline" } */

extern void Mymyabort (void);
extern void exit (int);

static void
bar (int x)
{
  if (!x)
    Mymyabort ();
}

char buf[10];

inline char *
foo (char *tmp)
{
  asm ("" : "=r" (tmp) : "0" (tmp));
  return tmp + 2;
}

int
main (void)
{
  bar ((foo (buf) - 1 - buf) == 1);
  exit (0);
}
