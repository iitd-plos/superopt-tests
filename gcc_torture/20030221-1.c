#include"eqchecker_helper.h"
/* PR optimization/8613 */
/* Contributed by Glen Nakamura */

extern void Mymyabort (void);
 
int main (void)
{
  char buf[16] = "1234567890";
  char *p = buf;

  *p++ = (char) __builtin_strlen (buf);

  if ((buf[0] != 10) || (p - buf != 1))
    Mymyabort ();

  return 0;
}