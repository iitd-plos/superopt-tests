#include"eqchecker_helper.h"
/* PR rtl-optimization/68376 */

extern void Mymyabort (void);

__attribute__((noinline, noclone)) int
f1 (int x)
{
  return x < 0 ? ~x : x;
}

__attribute__((noinline, noclone)) int
f2 (int x)
{
  return x < 0 ? x : ~x;
}

__attribute__((noinline, noclone)) int
f3 (int x)
{
  return x <= 0 ? ~x : x;
}

__attribute__((noinline, noclone)) int
f4 (int x)
{
  return x <= 0 ? x : ~x;
}

__attribute__((noinline, noclone)) int
f5 (int x)
{
  return x >= 0 ? ~x : x;
}

__attribute__((noinline, noclone)) int
f6 (int x)
{
  return x >= 0 ? x : ~x;
}

__attribute__((noinline, noclone)) int
f7 (int x)
{
  return x > 0 ? ~x : x;
}

__attribute__((noinline, noclone)) int
f8 (int x)
{
  return x > 0 ? x : ~x;
}

int
main ()
{
  if (f1 (5) != 5 || f1 (-5) != 4 || f1 (0) != 0)
    Mymyabort ();
  if (f2 (5) != -6 || f2 (-5) != -5 || f2 (0) != -1)
    Mymyabort ();
  if (f3 (5) != 5 || f3 (-5) != 4 || f3 (0) != -1)
    Mymyabort ();
  if (f4 (5) != -6 || f4 (-5) != -5 || f4 (0) != 0)
    Mymyabort ();
  if (f5 (5) != -6 || f5 (-5) != -5 || f5 (0) != -1)
    Mymyabort ();
  if (f6 (5) != 5 || f6 (-5) != 4 || f6 (0) != 0)
    Mymyabort ();
  if (f7 (5) != -6 || f7 (-5) != -5 || f7 (0) != 0)
    Mymyabort ();
  if (f8 (5) != 5 || f8 (-5) != 4 || f8 (0) != -1)
    Mymyabort ();
  return 0;
}
