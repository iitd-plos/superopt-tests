#include"eqchecker_helper.h"
/* PR c/6677 */
/* Verify that GCC doesn't perform illegal simplifications
   when folding constants.  */

#include <limits.h>

extern void Mymyabort (void);
extern void exit (int);

int main (void)
{
  int i;
  signed char j;
  unsigned char k;

  i = SCHAR_MAX;

  j = ((signed char) (i << 1)) / 2;

  if (j != -1)
    Mymyabort();

  j = ((signed char) (i * 2)) / 2;

  if (j != -1)
    Mymyabort();

  i = UCHAR_MAX;

  k = ((unsigned char) (i << 1)) / 2;

  if (k != UCHAR_MAX/2)
    Mymyabort();

  k = ((unsigned char) (i * 2)) / 2;

  if (k != UCHAR_MAX/2)
    Mymyabort();

  exit(0);
}
