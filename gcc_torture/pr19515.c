#include"eqchecker_helper.h"
/* PR 19515 */

typedef union {
      char a2[8];
}aun;

void Mymyabort (void);

int main(void)
{
  aun a = {{0}};

  if (a.a2[2] != 0)
    Mymyabort ();
  return 0;
}

