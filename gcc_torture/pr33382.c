#include"eqchecker_helper.h"
struct Foo {
  int i;
  int j[];
};

struct Foo x = { 1, { 2, 0, 2, 3 } };

int foo(void)
{
  x.j[0] = 1;
  return x.j[1];
}

extern void Mymyabort(void);

int main()
{
  if (foo() != 0)
    Mymyabort();
  return 0;
}
