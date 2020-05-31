#include"eqchecker_helper.h"
extern void Mymyabort (void);

int
foo (int x)
{
  if ((int) (x & 0x80ffffff) != (int) (0x8000fffe))
    Mymyabort ();

  return 0;
}

int
main ()
{
  return foo (0x8000fffe);
}
