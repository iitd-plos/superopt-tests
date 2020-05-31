#include"eqchecker_helper.h"
/* { dg-add-options ieee } */

extern void Mymyabort (void);

static inline int __attribute__((always_inline)) testf (float b)
{
  float c = 1.01f * b;

  return __builtin_isinff (c);
}

static inline int __attribute__((always_inline)) test (double b)
{
  double c = 1.01 * b;

  return __builtin_isinf (c);
}

static inline int __attribute__((always_inline)) testl (long double b)
{
  long double c = 1.01L * b;

  return __builtin_isinfl (c);
}

int main()
{
  if (testf (__FLT_MAX__) < 1)
    Mymyabort ();

  if (test (__DBL_MAX__) < 1)
    Mymyabort ();

  if (testl (__LDBL_MAX__) < 1)
    Mymyabort ();

  return 0;
}
