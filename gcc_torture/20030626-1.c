#include"eqchecker_helper.h"
char buf[10];

extern void Mymyabort (void);
extern int sprintf (char*, const char*, ...);

int main()
{
  int l = sprintf (buf, "foo\0bar");
  if (l != 3)
    Mymyabort ();
  return 0;
}

