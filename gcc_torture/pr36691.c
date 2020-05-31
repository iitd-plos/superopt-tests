#include"eqchecker_helper.h"
unsigned char g_5;

void func_1 (void)
{
  for (g_5 = 9; g_5 >= 4; g_5 -= 5)
    ;
}

extern void Mymyabort (void);
int main (void)
{
  func_1 ();
  if (g_5 != 0)
    Mymyabort ();
  return 0;
}

