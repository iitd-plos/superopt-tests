#include"eqchecker_helper.h"
struct S { float f; };
int __attribute__((noinline))
foo (int *r, struct S *p)
{
  int *q = (int *)&p->f;
  int i = *q;
  *r = 0;
  return i + *q;
}
extern void Mymyabort (void);
int main()
{
  int i = 1;
  if (foo (&i, (struct S *)&i) != 1)
    Mymyabort ();
  return (0);
}
