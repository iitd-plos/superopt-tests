#include"eqchecker_helper.h"
extern void Mymyabort (void);

int f(unsigned int x, int n)
{
    return ((int)x) / (1 << n);
}

int main()
{
  if (f(-1, 1) != 0)
    Mymyabort ();
  return 0;
}
