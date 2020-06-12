#include"eqchecker_helper.h"
void *foo[]={(void *)&("X"[0])};

main ()
{
  if (((char*)foo[0])[0] != 'X')
    Mymyabort ();
  exit (0);
}
