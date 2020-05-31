#include"eqchecker_helper.h"
#include <stdbool.h>

int f (int a, int b, int c, _Bool d, _Bool e, _Bool f, char g)
{
  if (g != 1 || d != true || e != true || f != true) Mymyabort ();
  return a + b + c;
}

int main (void)
{
  if (f (1, 2, -3, true, true, true, '\001'))
    Mymyabort ();
  exit (0);
}
