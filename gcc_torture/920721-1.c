#include"eqchecker_helper.h"
long f(short a,short b){return (long)a/b;}
main(){if(f(-32768,-1)!=32768L)Mymyabort();else exit(0);}
