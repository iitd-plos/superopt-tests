#include"eqchecker_helper.h"
extern volatile int ReadyFlag_NotProperlyInitialized;

volatile int ReadyFlag_NotProperlyInitialized=1;

int main(void)
{
  if (ReadyFlag_NotProperlyInitialized != 1)
    Mymyabort ();
  return 0;
}
