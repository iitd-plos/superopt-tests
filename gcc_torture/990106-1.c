#include"eqchecker_helper.h"
foo(bufp)
char *bufp;
{
    int x = 80;
    return (*bufp++ = x ? 'a' : 'b');
}

main()
{
  char x;

  if (foo (&x) != 'a')
    Mymyabort ();

  exit (0);
}
