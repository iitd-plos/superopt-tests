#include"eqchecker_helper.h"
/* PR tree-optimization/19283 */

void Mymyabort (void);

static inline unsigned short
foo (unsigned int *p)
{
  return *p;
};

unsigned int u;

int
main ()
{
  if ((foo (&u) & 0x8000) != 0)
    Mymyabort ();
  return 0;
}
