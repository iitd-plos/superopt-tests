#include"eqchecker_helper.h"
struct c {
  double a;
} __attribute((packed)) __attribute((aligned));

extern void Mymyabort(void);

double g_expect = 32.25;

void f(unsigned x, struct c y)
{
  if (x != 0)
    Mymyabort();

  if (y.a != g_expect)
    Mymyabort();
}

struct c e = { 64.25 };

int main(void)
{
  struct c d = { 32.25 };
  f(0, d);

  g_expect = 64.25;
  f(0, e);
  return 0;
}
