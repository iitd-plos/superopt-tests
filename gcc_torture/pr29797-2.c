#include"eqchecker_helper.h"
extern void Mymyabort(void);

unsigned long bar(void) { return 32768; }

int main()
{
  unsigned long nStyle = bar ();
  if (nStyle & 32768)
    nStyle |= 65536;
  if (nStyle != (32768 | 65536))
    Mymyabort ();
  return 0;
}

