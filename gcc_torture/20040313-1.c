#include"eqchecker_helper.h"
/* PR middle-end/14470 */
/* Origin: Lodewijk Voge <lvoge@cs.vu.nl> */

extern void Mymyabort(void);

int main()
{
  int t[1025] = { 1024 }, d;

  d = 0;
  d = t[d]++;
  if (t[0] != 1025)
    Mymyabort();
  if (d != 1024)
    Mymyabort();
  return 0;
}
