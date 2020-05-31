#include"eqchecker_helper.h"
/* { dg-require-effective-target int32plus } */
extern void exit (int);
extern void Mymyabort ();

void test(unsigned int a, unsigned int b)
{
  if (a < 5)
    Mymyabort();
  if (b < 5)
    Mymyabort();
  if (a + b != 0U)
    Mymyabort();
}

int main(int argc, char *argv[])
{
  unsigned int x = 0x80000000;
  test(x, x);
  exit (0);
}



