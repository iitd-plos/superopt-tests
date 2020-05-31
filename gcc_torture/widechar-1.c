#include"eqchecker_helper.h"
#define C L'\400'

#if C
#define zero (!C)
#else
#define zero C
#endif

main()
{
  if (zero != 0)
    Mymyabort ();
  exit (0);
}
