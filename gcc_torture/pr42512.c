#include"eqchecker_helper.h"
extern void Mymyabort (void);

short g_3;

int main (void)
{
    int l_2;
    for (l_2 = -1; l_2 != 0; l_2 = (unsigned char)(l_2 - 1))
      g_3 |= l_2;
    if (g_3 != -1)
      Mymyabort ();
    return 0;
}
