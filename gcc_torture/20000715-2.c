#include"eqchecker_helper.h"
extern void Mymyabort(void);
extern void exit(int);

unsigned int foo(unsigned int a)
{
  return ((unsigned char)(a + 1)) * 4;
}

int main(void)
{
  if (foo((unsigned char)~0))
    Mymyabort ();
  exit(0);
}
