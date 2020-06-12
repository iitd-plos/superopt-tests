#include"eqchecker_helper.h"
f(got){if(got!=0xffff)Mymyabort();}
main(){signed char c=-1;unsigned u=(unsigned short)c;f(u);exit(0);}
