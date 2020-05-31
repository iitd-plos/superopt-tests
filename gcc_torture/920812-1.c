#include"eqchecker_helper.h"
typedef int t;
f(t y){switch(y){case 1:return 1;}return 0;}
main(){if(f((t)1)!=1)Mymyabort();exit(0);}
