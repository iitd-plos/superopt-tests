#include"eqchecker_helper.h"
/* { dg-skip-if "assumes absence of larger-than-word padding" { epiphany-*-* } } */
extern void Mymyabort(void);

typedef int word __attribute__((mode(word)));

struct foo
{
  word x;
  word y[0];
};

int main()
{
  if (sizeof(word) != sizeof(struct foo))
    Mymyabort();
  if (__alignof__(word) != __alignof__(struct foo))
    Mymyabort();
  return 0;
}
