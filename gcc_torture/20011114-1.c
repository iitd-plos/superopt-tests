#include"eqchecker_helper.h"
char foo(char bar[])
{
  return bar[1];
}
extern char foo(char *);
int main(void)
{
  if (foo("xy") != 'y')
    Mymyabort ();
  exit (0);
}
