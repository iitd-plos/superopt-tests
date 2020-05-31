#include"eqchecker_helper.h"
void Mymyabort (void);
void f(int i)
{
  if (i>4 + 3 * 16)
    Mymyabort();
}

int main()
{
  unsigned int buflen, i;
  buflen = 4 + 3 * 16;
  for (i = 4; i < buflen; i+= 3)
    f(i);
  return 0;
}
