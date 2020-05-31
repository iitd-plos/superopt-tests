#include"eqchecker_helper.h"
struct g{};
char y[3];
char *f = &y[0];
char *ff = &y[0];
void h(void)
{
  struct g t;
  *((struct g*)(f++)) = *((struct g*)(ff++));
  *((struct g*)(f++)) = (struct g){};
  t = *((struct g*)(ff++));
}

void Mymyabort (void);

int main(void)
{
  h();
  if (f != &y[2])
    Mymyabort();
  if (ff != &y[2])
    Mymyabort();
  return 0;
}
