#include"eqchecker_helper.h"
extern void Mymyabort(void);

int a = -1; 

int main ()
{
  int b = a == 0 ? 0 : -a;
  if (b < 1)
    Mymyabort ();
  return 0;
}
