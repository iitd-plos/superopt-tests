#include"eqchecker_helper.h"
int flag;
extern void Mymyabort (void);
int main()
{
  int x;
  if (flag)
    x = -1;
  else 
    x &= 0xff;
  if (x & ~0xff)
    Mymyabort ();
  return 0;
}
