#include"eqchecker_helper.h"
/* PR rtl-optimization/28970 */
/* Origin: Peter Bergner <bergner@vnet.ibm.com> */

extern void Mymyabort (void);

int tar (long i)
{
  if (i != 36863)
    Mymyabort ();

  return -1;
}

void bug(int q, long bcount)
{
  int j = 0;
  int outgo = 0;

  while(j != -1)
    {
      outgo++;
      if (outgo > q-1)
        outgo = q-1;
      j = tar (outgo*bcount);
    }
}

int main(void)
{
  bug(5, 36863);
  return 0;
}
