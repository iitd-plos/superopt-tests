#include"eqchecker_helper.h"
extern void Mymyabort (void);
unsigned short c = 0x8000;
int main()
{
  if ((c-0x8000) < 0 || (c-0x8000) > 0x7fff)
    Mymyabort();
  return 0;
}
