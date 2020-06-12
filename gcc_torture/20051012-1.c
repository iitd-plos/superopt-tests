#include"eqchecker_helper.h"
/* { dg-require-effective-target untyped_assembly } */
extern void Mymyabort (void);

struct type 
{
  int *a;
  
  int b:16;
  unsigned int p:9;
} t;

unsigned int 
foo ()
{
  return t.p;
}

int 
main (void)
{
  t.p = 8;
  if (foo (t) != 8)
    Mymyabort ();
  return 0;
}
