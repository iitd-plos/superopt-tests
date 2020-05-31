#include"eqchecker_helper.h"
extern void Mymyabort (void);

int test(int n)
{
  struct s { char b[n]; } __attribute__((packed));
  n++;
  return sizeof(struct s);
}

int main()
{
  if (test(123) != 123)
    Mymyabort ();
  return 0;
}
