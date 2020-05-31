#include"eqchecker_helper.h"
/* PR target/60062 */

int a;

static void
foo (const char *p1, int p2)
{
  if (__builtin_strcmp (p1, "hello") != 0)
    Mymyabort ();
}

static void
bar (const char *p1)
{
  if (__builtin_strcmp (p1, "hello") != 0)
    Mymyabort ();
}

__attribute__((optimize (0))) int
main ()
{
  foo ("hello", a);
  bar ("hello");
  return 0;
}
