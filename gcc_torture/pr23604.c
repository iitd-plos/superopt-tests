#include"eqchecker_helper.h"
extern void Mymyabort (void);

int g(int i, int j)
{
  if (i>-1)
    if (i<2)
     {
        if (i != j)
          {
            if (j != 0)
                return 0;
          }
     }
  return 1;
}

int main(void)
{
  if (!g(1, 0))
   Mymyabort ();
  return 0;
}
