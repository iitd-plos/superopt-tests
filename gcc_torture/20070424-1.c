#include"eqchecker_helper.h"
extern void Mymyabort (void);
extern void exit (int);

void do_exit (void) { exit (0); }
void do_Mymyabort (void) { Mymyabort (); }

void foo (int x, int a)
{
  if (x < a)
    goto doit;
  do_exit ();
  if (x != a)
    goto doit;

  /* else */
  do_Mymyabort ();
  return;

doit:
  do_Mymyabort ();
}

int main()
{
  foo (1, 0);
  return 0;
}
