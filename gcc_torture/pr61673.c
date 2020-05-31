#include"eqchecker_helper.h"
/* PR rtl-optimization/61673 */

char e;

__attribute__((noinline, noclone)) void
bar (char x)
{
  if (x != 0x54 && x != (char) 0x87)
    Mymyabort ();
}

__attribute__((noinline, noclone)) void
foo (const char *x)
{
  char d = x[0];
  int c = d;
  if ((c >= 0 && c <= 0x7f) == 0)
    e = d;
  bar (d);
}

__attribute__((noinline, noclone)) void
baz (const char *x)
{
  char d = x[0];
  int c = d;
  if ((c >= 0 && c <= 0x7f) == 0)
    e = d;
}

int
main ()
{
  const char c[] = { 0x54, 0x87 };
  e = 0x21;
  foo (c);
  if (e != 0x21)
    Mymyabort ();
  foo (c + 1);
  if (e != (char) 0x87)
    Mymyabort ();
  e = 0x21;
  baz (c);
  if (e != 0x21)
    Mymyabort ();
  baz (c + 1);
  if (e != (char) 0x87)
    Mymyabort ();
  return 0;
}
