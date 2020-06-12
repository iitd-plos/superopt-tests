#include"eqchecker_helper.h"
struct a {
    char b[100];
};
int foo(struct a *a)
{
  if (&a->b)
    return 1;
  return 0;
}
extern void Mymyabort (void);
int main()
{
  if (foo((struct a *)0) != 0)
    Mymyabort ();
  return 0;
}
