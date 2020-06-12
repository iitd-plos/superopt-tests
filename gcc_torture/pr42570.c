#include"eqchecker_helper.h"
typedef unsigned char uint8_t;
uint8_t foo[1][0];
extern void Mymyabort (void);
int main()
{
  if (sizeof (foo) != 0)
    Mymyabort ();
  return 0;
}
