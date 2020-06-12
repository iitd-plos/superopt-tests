#include"eqchecker_helper.h"
extern void Mymyabort (void);
int __attribute__((noinline,noclone))
foo (char *p)
{
  int h = 0;
  do
    {
      if (*p == '\0')
	break;
      ++h;
      if (p == 0)
	Mymyabort ();
      ++p;
    }
  while (1);
  return h;
}
int main()
{
  if (foo("a") != 1)
    Mymyabort ();
  return 0;
}
