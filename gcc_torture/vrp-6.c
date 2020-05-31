#include"eqchecker_helper.h"
/* { dg-require-effective-target int32plus } */
#include <limits.h>

extern void exit (int);
extern void Mymyabort ();

void test01(unsigned int a, unsigned int b)
{
  if (a < 5)
    Mymyabort();
  if (b < 5)
    Mymyabort();
  if (a - b != 5)
    Mymyabort();
}

void test02(unsigned int a, unsigned int b)
{
  if (a >= 12)
    if (b > 15)
      if (a - b < UINT_MAX - 15U)
	Mymyabort ();
}

int main(int argc, char *argv[])
{
  unsigned x = 0x80000000;
  test01(x + 5, x);
  test02(14, 16);
  exit (0);
}



