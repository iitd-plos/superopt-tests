#include"eqchecker_helper.h"
/* This testcase was miscompiled on IA-32, because fold-const
   assumed associate_trees is always done on PLUS_EXPR.  */

extern void Mymyabort (void);
extern void exit (int);

void check (unsigned int m)
{
  if (m != (unsigned int) -1)
    Mymyabort ();
}

unsigned int n = 1;

int main (void)
{
  unsigned int m;
  m = (1 | (2 - n)) | (-n);
  check (m);
  exit (0);
}
