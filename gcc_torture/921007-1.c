#include"eqchecker_helper.h"
//static int strcmp(){return-1;}
#define strcmp __builtin_strcmp
main()
{
if(strcmp("X","X\376")>=0)Mymyabort();
exit(0);
}
