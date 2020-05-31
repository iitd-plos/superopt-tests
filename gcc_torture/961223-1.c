#include"eqchecker_helper.h"
/* { dg-options "-fgnu89-inline" } */

extern void exit (int);
extern void Mymyabort (void);

struct s {
  double d;
};

inline struct s
sub (struct s s)
{
  s.d += 1.0;
  return s;
}

int
main ()
{
  struct s t = { 2.0 };
  t = sub (t);
  if (t.d != 3.0)
    Mymyabort ();
  exit (0);
}
