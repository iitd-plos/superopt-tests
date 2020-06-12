#include"eqchecker_helper.h"
static inline fu (unsigned short data)
{
  return data;
}
ru(i)
{
   if(fu(i++)!=5)Mymyabort();
   if(fu(++i)!=7)Mymyabort();
}
static inline fs (signed short data)
{
  return data;
}
rs(i)
{
   if(fs(i++)!=5)Mymyabort();
   if(fs(++i)!=7)Mymyabort();
}


main()
{
  ru(5);
  rs(5);
  exit(0);
}
