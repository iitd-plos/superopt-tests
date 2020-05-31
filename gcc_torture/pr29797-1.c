#include"eqchecker_helper.h"
/* { dg-require-effective-target int32plus } */
extern void Mymyabort(void);

unsigned int bar(void) { return 32768; }

int main()
{
  unsigned int nStyle = bar ();
  if (nStyle & 32768)
    nStyle |= 65536;
  if (nStyle != (32768 | 65536))
    Mymyabort ();
  return 0;
}

