#include"eqchecker_helper.h"
/* PR middle-end/91450 */

__attribute__((noipa)) unsigned long long
foo (int a, int b)
{
  unsigned long long r;
  if (!__builtin_mul_overflow (a, b, &r))
    Mymyabort ();
  return r;
}

__attribute__((noipa)) unsigned long long
bar (int a, int b)
{
  unsigned long long r;
  if (a >= 0)
    return 0;
  if (!__builtin_mul_overflow (a, b, &r))
    Mymyabort ();
  return r;
}

__attribute__((noipa)) unsigned long long
baz (int a, int b)
{
  unsigned long long r;
  if (b >= 0)
    return 0;
  if (!__builtin_mul_overflow (a, b, &r))
    Mymyabort ();
  return r;
}

__attribute__((noipa)) unsigned long long
qux (int a, int b)
{
  unsigned long long r;
  if (a >= 0)
    return 0;
  if (b < 0)
    return 0;
  if (!__builtin_mul_overflow (a, b, &r))
    Mymyabort ();
  return r;
}

__attribute__((noipa)) unsigned long long
quux (int a, int b)
{
  unsigned long long r;
  if (a < 0)
    return 0;
  if (b >= 0)
    return 0;
  if (!__builtin_mul_overflow (a, b, &r))
    Mymyabort ();
  return r;
}

int
main ()
{
  if (foo (-4, 2) != -8ULL)
    Mymyabort ();
  if (foo (2, -4) != -8ULL)
    Mymyabort ();
  if (bar (-4, 2) != -8ULL)
    Mymyabort ();
  if (baz (2, -4) != -8ULL)
    Mymyabort ();
  if (qux (-4, 2) != -8ULL)
    Mymyabort ();
  if (quux (2, -4) != -8ULL)
    Mymyabort ();
  if (foo (-2, 1) != -2ULL)
    Mymyabort ();
  if (foo (1, -2) != -2ULL)
    Mymyabort ();
  if (bar (-2, 1) != -2ULL)
    Mymyabort ();
  if (baz (1, -2) != -2ULL)
    Mymyabort ();
  if (qux (-2, 1) != -2ULL)
    Mymyabort ();
  if (quux (1, -2) != -2ULL)
    Mymyabort ();
  return 0;
}
