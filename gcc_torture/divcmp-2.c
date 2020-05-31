#include"eqchecker_helper.h"
extern void Mymyabort (void);

int test1(int x)
{
  return x/10 == 2;
}

int test2(int x)
{
  return x/10 == 0;
}

int test3(int x)
{
  return x/10 == -2;
}

int test4(int x)
{
  return x/-10 == 2;
}

int test5(int x)
{
  return x/-10 == 0;
}

int test6(int x)
{
  return x/-10 == -2;
}


int main()
{
  if (test1(19) != 0)
    Mymyabort ();
  if (test1(20) != 1)
    Mymyabort ();
  if (test1(29) != 1)
    Mymyabort ();
  if (test1(30) != 0)
    Mymyabort ();

  if (test2(-10) != 0)
    Mymyabort ();
  if (test2(-9) != 1)
    Mymyabort ();
  if (test2(9) != 1)
    Mymyabort ();
  if (test2(10) != 0)
    Mymyabort ();

  if (test3(-30) != 0)
    Mymyabort ();
  if (test3(-29) != 1)
    Mymyabort ();
  if (test3(-20) != 1)
    Mymyabort ();
  if (test3(-19) != 0)
    Mymyabort ();

  if (test4(-30) != 0)
    Mymyabort ();
  if (test4(-29) != 1)
    Mymyabort ();
  if (test4(-20) != 1)
    Mymyabort ();
  if (test4(-19) != 0)
    Mymyabort ();

  if (test5(-10) != 0)
    Mymyabort ();
  if (test5(-9) != 1)
    Mymyabort ();
  if (test5(9) != 1)
    Mymyabort ();
  if (test5(10) != 0)
    Mymyabort ();

  if (test6(19) != 0)
    Mymyabort ();
  if (test6(20) != 1)
    Mymyabort ();
  if (test6(29) != 1)
    Mymyabort ();
  if (test6(30) != 0)
    Mymyabort ();

  return 0;
}

