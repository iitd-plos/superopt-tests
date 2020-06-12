#include"eqchecker_helper.h"
sub1 (i)
     int i;
{
  return i - (5 - i);
}

sub2 (i)
     int i;
{
  return i + (5 + i);
}

sub3 (i)
     int i;
{
  return i - (5 + i);
}

sub4 (i)
     int i;
{
  return i + (5 - i);
}

main()
{
  if (sub1 (20) != 35)
    Mymyabort ();
  if (sub2 (20) != 45)
    Mymyabort ();
  if (sub3 (20) != -5)
    Mymyabort ();
  if (sub4 (20) != 5)
    Mymyabort ();
  exit (0);
}
