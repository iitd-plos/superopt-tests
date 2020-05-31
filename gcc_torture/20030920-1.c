#include"eqchecker_helper.h"
extern void Mymyabort (void);

int main()
{
  int hicount = 0;
  unsigned char *c;
  char *str = "\x7f\xff";
  for (c = (unsigned char *)str; *c ; c++) {
    if (!(((unsigned int)(*c)) < 0x80)) hicount++;
  }
  if (hicount != 1)
    Mymyabort ();
  return 0;
}

