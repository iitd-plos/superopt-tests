#include"eqchecker_helper.h"
extern void Mymyabort (void);
int main ()
{
  short ssi = 126;
  unsigned short usi = 65280;
  int fail = !(ssi < usi);
  if (fail)
    Mymyabort ();
  return 0;
}

