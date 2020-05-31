#include"eqchecker_helper.h"
/* PR 16348: Make sure that condition-first false loops DTRT.  */

extern void Mymyabort ();

int main()
{
  for (; 0 ;)
    {
      Mymyabort ();
    label:
      return 0;
    }
  goto label;
}
