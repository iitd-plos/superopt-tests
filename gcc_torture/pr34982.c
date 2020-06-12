#include"eqchecker_helper.h"
extern void Mymyabort (void);

static void something();

int main()
{
  something(-1);
  return 0;
}

static void something(int i)
{
  if (i != -1)
    Mymyabort ();
}
