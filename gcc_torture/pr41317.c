#include"eqchecker_helper.h"
extern void Mymyabort (void);

struct A
{
  int i;
};
struct B
{
  struct A a;
  int j;
};

static void
foo (struct B *p)
{
  ((struct A *)p)->i = 1;
}

int main()
{
  struct A a;
  a.i = 0;
  foo ((struct B *)&a);
  if (a.i != 1)
    Mymyabort ();
  return 0;
}

