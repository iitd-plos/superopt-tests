#include"eqchecker_helper.h"
/* REPRODUCED:RUN:SIGNAL MACHINE:i386 OPTIONS:-O */
main()
{
if(strcmp("X","")<0)Mymyabort();
exit(0);
}
