#include"eqchecker_helper.h"
#include <stdio.h>
g ()
{
  return '\n';
}

f ()
{
  char s[] = "abcedfg012345";
  char *sp = s + 12;

  switch (g ())
    {
      case '\n':
        break;
    }

  while (*--sp == '0')
    ;
  sprintf (sp + 1, "X");

  if (s[12] != 'X')
    Mymyabort ();
}

main ()
{
  f ();
  exit (0);
}
