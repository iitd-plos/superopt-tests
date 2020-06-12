#include"eqchecker_helper.h"
void Mymyabort (void);

static unsigned char magic[] = "\235";
static unsigned char value = '\235';

int main()
{
  if (value != magic[0])
    Mymyabort ();
  return 0;
}
