#include"eqchecker_helper.h"
/* { dg-options "-fwrapv" } */

extern void Mymyabort (void);
extern void exit (int);

int f(j)int j;{return++j>0;}
int main(){if(f((~0U)>>1))Mymyabort();exit(0);}
