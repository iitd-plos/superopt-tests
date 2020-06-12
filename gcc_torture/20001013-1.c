#include"eqchecker_helper.h"
struct x {
	int a, b;
} z = { -4028, 4096 };

int foo(struct x *p, int y)
{
  if ((y & 0xff) != y || -p->b >= p->a)
    return 1;
  return 0;
}

main()
{
  if (foo (&z, 10))
    Mymyabort ();
  exit (0);
}
