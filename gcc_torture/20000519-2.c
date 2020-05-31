#include"eqchecker_helper.h"
long x = -1L;

int main()
{
  long b = (x != -1L);

  if (b)
    Mymyabort();

  exit(0);
}

