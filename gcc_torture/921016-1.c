#include"eqchecker_helper.h"
main()
{
int j=1081;
struct
{
signed int m:11;
}l;
if((l.m=j)==j)Mymyabort();
exit(0);
}
