#include"eqchecker_helper.h"
extern void Mymyabort(void);

int test1(int x)
{
  return x/10 == 2;
}

int test1u(unsigned int x)
{
  return x/10U == 2;
}

int test2(int x)
{
  return x/10 == 0;
}

int test2u(unsigned int x)
{
  return x/10U == 0;
}

int test3(int x)
{
  return x/10 != 2;
}

int test3u(unsigned int x)
{
  return x/10U != 2;
}

int test4(int x)
{
  return x/10 != 0;
}

int test4u(unsigned int x)
{
  return x/10U != 0;
}

int test5(int x)
{
  return x/10 < 2;
}

int test5u(unsigned int x)
{
  return x/10U < 2;
}

int test6(int x)
{
  return x/10 < 0;
}

int test7(int x)
{
  return x/10  <= 2;
}

int test7u(unsigned int x)
{
  return x/10U <= 2;
}

int test8(int x)
{
  return x/10 <= 0;
}

int test8u(unsigned int x)
{
  return x/10U <= 0;
}

int test9(int x)
{
  return x/10 > 2;
}

int test9u(unsigned int x)
{
  return x/10U > 2;
}

int test10(int x)
{
  return x/10 > 0;
}

int test10u(unsigned int x)
{
  return x/10U > 0;
}

int test11(int x)
{
  return x/10 >= 2;
}

int test11u(unsigned int x)
{
  return x/10U >= 2;
}

int test12(int x)
{
  return x/10 >= 0;
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

  if (test1u(19) != 0)
    Mymyabort ();
  if (test1u(20) != 1)
    Mymyabort ();
  if (test1u(29) != 1)
    Mymyabort ();
  if (test1u(30) != 0)
    Mymyabort ();

  if (test2(0) != 1)
    Mymyabort ();
  if (test2(9) != 1)
    Mymyabort ();
  if (test2(10) != 0)
    Mymyabort ();
  if (test2(-1) != 1)
    Mymyabort ();
  if (test2(-9) != 1)
    Mymyabort ();
  if (test2(-10) != 0)
    Mymyabort ();

  if (test2u(0) != 1)
    Mymyabort ();
  if (test2u(9) != 1)
    Mymyabort ();
  if (test2u(10) != 0)
    Mymyabort ();
  if (test2u(-1) != 0)
    Mymyabort ();
  if (test2u(-9) != 0)
    Mymyabort ();
  if (test2u(-10) != 0)
    Mymyabort ();

  if (test3(19) != 1)
    Mymyabort ();
  if (test3(20) != 0)
    Mymyabort ();
  if (test3(29) != 0)
    Mymyabort ();
  if (test3(30) != 1)
    Mymyabort ();

  if (test3u(19) != 1)
    Mymyabort ();
  if (test3u(20) != 0)
    Mymyabort ();
  if (test3u(29) != 0)
    Mymyabort ();
  if (test3u(30) != 1)
    Mymyabort ();

  if (test4(0) != 0)
    Mymyabort ();
  if (test4(9) != 0)
    Mymyabort ();
  if (test4(10) != 1)
    Mymyabort ();
  if (test4(-1) != 0)
    Mymyabort ();
  if (test4(-9) != 0)
    Mymyabort ();
  if (test4(-10) != 1)
    Mymyabort ();

  if (test4u(0) != 0)
    Mymyabort ();
  if (test4u(9) != 0)
    Mymyabort ();
  if (test4u(10) != 1)
    Mymyabort ();
  if (test4u(-1) != 1)
    Mymyabort ();
  if (test4u(-9) != 1)
    Mymyabort ();
  if (test4u(-10) != 1)
    Mymyabort ();

  if (test5(19) != 1)
    Mymyabort ();
  if (test5(20) != 0)
    Mymyabort ();
  if (test5(29) != 0)
    Mymyabort ();
  if (test5(30) != 0)
    Mymyabort ();

  if (test5u(19) != 1)
    Mymyabort ();
  if (test5u(20) != 0)
    Mymyabort ();
  if (test5u(29) != 0)
    Mymyabort ();
  if (test5u(30) != 0)
    Mymyabort ();

  if (test6(0) != 0)
    Mymyabort ();
  if (test6(9) != 0)
    Mymyabort ();
  if (test6(10) != 0)
    Mymyabort ();
  if (test6(-1) != 0)
    Mymyabort ();
  if (test6(-9) != 0)
    Mymyabort ();
  if (test6(-10) != 1)
    Mymyabort ();

  if (test7(19) != 1)
    Mymyabort ();
  if (test7(20) != 1)
    Mymyabort ();
  if (test7(29) != 1)
    Mymyabort ();
  if (test7(30) != 0)
    Mymyabort ();

  if (test7u(19) != 1)
    Mymyabort ();
  if (test7u(20) != 1)
    Mymyabort ();
  if (test7u(29) != 1)
    Mymyabort ();
  if (test7u(30) != 0)
    Mymyabort ();

  if (test8(0) != 1)
    Mymyabort ();
  if (test8(9) != 1)
    Mymyabort ();
  if (test8(10) != 0)
    Mymyabort ();
  if (test8(-1) != 1)
    Mymyabort ();
  if (test8(-9) != 1)
    Mymyabort ();
  if (test8(-10) != 1)
    Mymyabort ();

  if (test8u(0) != 1)
    Mymyabort ();
  if (test8u(9) != 1)
    Mymyabort ();
  if (test8u(10) != 0)
    Mymyabort ();
  if (test8u(-1) != 0)
    Mymyabort ();
  if (test8u(-9) != 0)
    Mymyabort ();
  if (test8u(-10) != 0)
    Mymyabort ();

  if (test9(19) != 0)
    Mymyabort ();
  if (test9(20) != 0)
    Mymyabort ();
  if (test9(29) != 0)
    Mymyabort ();
  if (test9(30) != 1)
    Mymyabort ();

  if (test9u(19) != 0)
    Mymyabort ();
  if (test9u(20) != 0)
    Mymyabort ();
  if (test9u(29) != 0)
    Mymyabort ();
  if (test9u(30) != 1)
    Mymyabort ();

  if (test10(0) != 0)
    Mymyabort ();
  if (test10(9) != 0)
    Mymyabort ();
  if (test10(10) != 1)
    Mymyabort ();
  if (test10(-1) != 0)
    Mymyabort ();
  if (test10(-9) != 0)
    Mymyabort ();
  if (test10(-10) != 0)
    Mymyabort ();

  if (test10u(0) != 0)
    Mymyabort ();
  if (test10u(9) != 0)
    Mymyabort ();
  if (test10u(10) != 1)
    Mymyabort ();
  if (test10u(-1) != 1)
    Mymyabort ();
  if (test10u(-9) != 1)
    Mymyabort ();
  if (test10u(-10) != 1)
    Mymyabort ();

  if (test11(19) != 0)
    Mymyabort ();
  if (test11(20) != 1)
    Mymyabort ();
  if (test11(29) != 1)
    Mymyabort ();
  if (test11(30) != 1)
    Mymyabort ();

  if (test11u(19) != 0)
    Mymyabort ();
  if (test11u(20) != 1)
    Mymyabort ();
  if (test11u(29) != 1)
    Mymyabort ();
  if (test11u(30) != 1)
    Mymyabort ();

  if (test12(0) != 1)
    Mymyabort ();
  if (test12(9) != 1)
    Mymyabort ();
  if (test12(10) != 1)
    Mymyabort ();
  if (test12(-1) != 1)
    Mymyabort ();
  if (test12(-9) != 1)
    Mymyabort ();
  if (test12(-10) != 0)
    Mymyabort ();

  return 0;
}

