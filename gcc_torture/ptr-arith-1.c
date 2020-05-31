#include"eqchecker_helper.h"
char *
f (char *s, unsigned int i)
{
  return &s[i + 3 - 1];
}

main ()
{
  char *str = "abcdefghijkl";
  char *x2 = f (str, 12);
  if (str + 14 != x2)
    Mymyabort ();
  exit (0);
}
