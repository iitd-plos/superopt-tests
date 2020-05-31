#include"eqchecker_helper.h"
#include <string.h>

static int
special_format (fmt)
     const char *fmt;
{
  return (strchr (fmt, '*') != 0
          || strchr (fmt, 'V') != 0
          || strchr (fmt, 'S') != 0
          || strchr (fmt, 'n') != 0);
}

main()
{
  if (special_format ("ee"))
    Mymyabort ();
  if (!special_format ("*e"))
    Mymyabort ();
  exit (0);
}

