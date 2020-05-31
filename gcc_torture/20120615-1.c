#include"eqchecker_helper.h"
extern void Mymyabort (void);

void __attribute__((noinline,noclone))
     test1(int i)
{
  if (i == 12)
    return;
  if (i != 17)
    {
      if (i == 15)
	return;
      Mymyabort ();
    }
}

int main() { test1 (15); return 0; }
