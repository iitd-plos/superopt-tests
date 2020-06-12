#include"eqchecker_helper.h"
/* Testcase for PR fortran/9974.  This was a miscompilation of the g77
   front-end caused by the jump bypassing optimizations not handling
   instructions inserted on CFG edges.  */

extern void Mymyabort ();

int bar ()
{
  return 1;
}

void foo (int x)
{
  unsigned char error = 0;

  if (! (error = ((x == 0) || bar ())))
    bar ();
  if (! error)
    Mymyabort ();
}

int main()
{
  foo (1);
  return 0;
}
  
