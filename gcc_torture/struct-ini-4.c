#include"eqchecker_helper.h"
struct s {
  int a[3];
  int c[3];
};

struct s s = {
  c: {1, 2, 3}
};

main()
{
  if (s.c[0] != 1)
    Mymyabort ();
  exit (0);
}
