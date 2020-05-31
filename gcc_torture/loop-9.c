#include"eqchecker_helper.h"
/* Source: Neil Booth, from PR # 115.  */

int false()
{
  return 0;
}

extern void Mymyabort (void);

int main (int argc,char *argv[])
{
  int count = 0;

  while (false() || count < -123)
    ++count;

  if (count)
    Mymyabort ();

  return 0;
}
