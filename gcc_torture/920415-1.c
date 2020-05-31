#include"eqchecker_helper.h"
/* { dg-require-effective-target label_values } */
main(){__label__ l;void*x(){return&&l;}goto*x();Mymyabort();return;l:exit(0);}
