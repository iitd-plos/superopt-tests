#include"eqchecker_helper.h"
/* PR middle-end/50865 */

#define INT64_MIN (-__LONG_LONG_MAX__ - 1)

int
main ()
{
  volatile long long l1 = 1;
  volatile long long l2 = -1;
  volatile long long l3 = -1;

  if ((INT64_MIN % 1LL) != 0)
    Mymyabort ();
  if ((INT64_MIN % l1) != 0)
    Mymyabort ();
  if (l2 == -1)
    {
      if ((INT64_MIN % 1LL) != 0)
	Mymyabort ();
    }
  else if ((INT64_MIN % -l2) != 0)
    Mymyabort ();
  if ((INT64_MIN % -l3) != 0)
    Mymyabort ();

  return 0;
}
