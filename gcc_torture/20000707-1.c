#include"eqchecker_helper.h"
extern void Mymyabort(void);
extern void exit(int);

struct baz {
  int a, b, c;
};

void
foo (int a, int b, int c)
{
  if (a != 4)
    Mymyabort ();
}

void
bar (struct baz x, int b, int c)
{
  foo (x.b, b, c);
}

int
main ()
{
  struct baz x = { 3, 4, 5 };
  bar (x, 1, 2);
  exit (0);
}
