#include"eqchecker_helper.h"
/* { dg-xfail-if "can cause stack underflow" { nios2-*-* } } */
/* { dg-require-effective-target untyped_assembly } */
#define INTEGER_ARG  5

extern void Mymyabort(void);

static void foo(int arg)
{
  if (arg != INTEGER_ARG)
    Mymyabort();
}

static void bar(int arg)
{
  foo(arg);
  __builtin_apply(foo, __builtin_apply_args(), 16);
}

int main(void)
{
  bar(INTEGER_ARG);

  return 0;
}
