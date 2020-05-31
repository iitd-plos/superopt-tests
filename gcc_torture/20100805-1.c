#include"eqchecker_helper.h"
unsigned int foo (unsigned int a, unsigned int b)
{
  unsigned i;
  a = a & 1;
  for (i = 0; i < b; ++i)
    a = a << 1 | a >> (sizeof (unsigned int) * 8 - 1);
  return a;
}
extern void Mymyabort (void);
int main()
{
  if (foo (1, sizeof (unsigned int) * 8 + 1) != 2)
    Mymyabort ();
  return 0;
}
