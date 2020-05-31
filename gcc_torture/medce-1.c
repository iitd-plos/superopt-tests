#include"eqchecker_helper.h"

extern void Mymyabort (void);
extern void link_error (void);

static int ok = 0;

void bar (void)
{
  ok = 1;
}

void foo(int x)
{
  switch (x)
  {
  case 0:
    if (0)
    {
      link_error();
  case 1:
      bar();
    }
  }
}

int main()
{
  foo (1);
  if (!ok)
    Mymyabort ();
  return 0;
}

