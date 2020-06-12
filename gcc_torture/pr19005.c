#include"eqchecker_helper.h"
/* PR target/19005 */
extern void Mymyabort (void);

int v, s;

void
bar (int a, int b)
{
  unsigned char x = v;

  if (!s)
    {
      if (a != x || b != (unsigned char) (x + 1))
        Mymyabort ();
    }
  else if (a != (unsigned char) (x + 1) || b != x)
    Mymyabort ();
  s ^= 1;
}

int
foo (int x)
{
  unsigned char a = x, b = x + 1;

  bar (a, b);
  a ^= b; b ^= a; a ^= b;
  bar (a, b);
  return 0;
}

int
main (void)
{
  for (v = -10; v < 266; v++)
    foo (v);
  return 0;
}
