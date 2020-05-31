#include"eqchecker_helper.h"
/* This testcase is to make sure we have i in referenced vars and that we
   properly compute aliasing for the loads and stores.  */

extern void Mymyabort (void);

static int i;
static int *p = &i;

int __attribute__((noinline))
foo(int *q)
{
  *p = 1;
  *q = 2;
  return *p;
}

int __attribute__((noinline))
bar(int *q)
{
  *q = 2;
  *p = 1;
  return *q;
}

int main()
{
  int j = 0;

  if (foo(&i) != 2)
    Mymyabort ();
  if (bar(&i) != 1)
    Mymyabort ();
  if (foo(&j) != 1)
    Mymyabort ();
  if (j != 2)
    Mymyabort ();
  if (bar(&j) != 2)
    Mymyabort ();
  if (j != 2)
    Mymyabort ();

  return 0;
}
