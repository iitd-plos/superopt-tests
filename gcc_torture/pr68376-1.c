#include"eqchecker_helper.h"
/* PR rtl-optimization/68376 */

int a, b, c = 1;
signed char d;

int
main ()
{
  for (; a < 1; a++)
    for (; b < 1; b++)
      {
	signed char e = ~d;
	if (d < 1)
	  e = d;
	d = e;
	if (!c)
	  Mymyabort ();
      }

  if (d != 0)
    Mymyabort ();

  return 0;
}
