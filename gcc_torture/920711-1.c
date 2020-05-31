#include"eqchecker_helper.h"
/* { dg-options "-fwrapv" } */

extern void Mymyabort (void);
extern void exit (int);

int f(long a){return (--a > 0);}
int main(){if(f(0x80000000L)==0)Mymyabort();exit(0);}
