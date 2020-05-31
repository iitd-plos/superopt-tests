#include"eqchecker_helper.h"
extern void Mymyabort (void);

unsigned int test (unsigned int x)
{
  return x / 0x80000001U / 0x00000002U;
}

int main()
{
  if (test(2) != 0)
    Mymyabort ();
  return 0;
}
