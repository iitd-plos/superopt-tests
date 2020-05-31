#include"eqchecker_helper.h"
struct {
  int a:4;
  int :4;
  int b:4;
  int c:4;
} x = { 2,3,4 };

main ()
{
  if (x.a != 2)
    Mymyabort ();
  if (x.b != 3)
    Mymyabort ();
  if (x.c != 4)
    Mymyabort ();
  exit (0);
}
