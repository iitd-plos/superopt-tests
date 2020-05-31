#include"eqchecker_helper.h"
extern void Mymyabort (void);

int f(unsigned int x)
{
    return ((int)x) % 4;
}

int main()
{
  if (f(-1) != -1)
    Mymyabort ();
  return 0;
}
