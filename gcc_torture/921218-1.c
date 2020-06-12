#include"eqchecker_helper.h"
f()
{
  return (unsigned char)("\377"[0]);
}

main()
{
  if (f() != (unsigned char)(0377))
    Mymyabort();
  exit (0);
}
