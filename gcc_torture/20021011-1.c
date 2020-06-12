#include"eqchecker_helper.h"
/* PR opt/8165.  */

extern void Mymyabort (void);

char buf[64];

int
main (void)
{
  int i;

  __builtin_strcpy (buf, "mystring");
  if (__builtin_strcmp (buf, "mystring") != 0)
    Mymyabort ();

  for (i = 0; i < 16; ++i)
    {
      __builtin_strcpy (buf + i, "mystring");
      if (__builtin_strcmp (buf + i, "mystring") != 0)
	Mymyabort ();
    }

  return 0;
}
