#include"eqchecker_helper.h"
static void
compare (long long foo)
{
  if (foo < 4294967297LL)
    Mymyabort();
}
int main(void)
{
  compare (8589934591LL);
  exit (0);
}
