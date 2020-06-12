#include"eqchecker_helper.h"
extern void Mymyabort(void);

int __attribute__((noinline))
foo(int bits_per_pixel, int depth)
{
  if ((bits_per_pixel | depth) == 1)
    Mymyabort ();
  return bits_per_pixel;
}

int main()
{
  if (foo(2, 0) != 2)
    Mymyabort ();
  return 0;
}
