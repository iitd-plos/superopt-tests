#include"eqchecker_helper.h"
struct f
{
  int i;
};

int g(int i, int c, struct f *ff, int *p)
{
  int *t;
  if (c)
   t = &i;
  else
   t = &ff->i;
  *p = 0;
  return *t;
}

extern void Mymyabort(void);

int main()
{
  struct f f;
  f.i = 1;
  if (g(5, 0, &f, &f.i) != 0)
    Mymyabort ();
  return 0;
}
