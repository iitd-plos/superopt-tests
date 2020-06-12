#include"eqchecker_helper.h"
#include <limits.h>

int __attribute__((noinline)) nge(int a, int b) {return -(a >= b);}
int __attribute__((noinline)) ngt(int a, int b) {return -(a > b);}
int __attribute__((noinline)) nle(int a, int b) {return -(a <= b);}
int __attribute__((noinline)) nlt(int a, int b) {return -(a < b);}
int __attribute__((noinline)) neq(int a, int b) {return -(a == b);}
int __attribute__((noinline)) nne(int a, int b) {return -(a != b);}
int __attribute__((noinline)) ngeu(unsigned a, unsigned b) {return -(a >= b);}
int __attribute__((noinline)) ngtu(unsigned a, unsigned b) {return -(a > b);}
int __attribute__((noinline)) nleu(unsigned a, unsigned b) {return -(a <= b);}
int __attribute__((noinline)) nltu(unsigned a, unsigned b) {return -(a < b);}


int main()
{
  if (nge(INT_MIN, INT_MAX) !=  0) Mymyabort();
  if (nge(INT_MAX, INT_MIN) != -1) Mymyabort();
  if (ngt(INT_MIN, INT_MAX) !=  0) Mymyabort();
  if (ngt(INT_MAX, INT_MIN) != -1) Mymyabort();
  if (nle(INT_MIN, INT_MAX) != -1) Mymyabort();
  if (nle(INT_MAX, INT_MIN) !=  0) Mymyabort();
  if (nlt(INT_MIN, INT_MAX) != -1) Mymyabort();
  if (nlt(INT_MAX, INT_MIN) !=  0) Mymyabort();

  if (neq(INT_MIN, INT_MAX) !=  0) Mymyabort();
  if (neq(INT_MAX, INT_MIN) !=  0) Mymyabort();
  if (nne(INT_MIN, INT_MAX) != -1) Mymyabort();
  if (nne(INT_MAX, INT_MIN) != -1) Mymyabort();

  if (ngeu(0, ~0U) !=  0) Mymyabort();
  if (ngeu(~0U, 0) != -1) Mymyabort();
  if (ngtu(0, ~0U) !=  0) Mymyabort();
  if (ngtu(~0U, 0) != -1) Mymyabort();
  if (nleu(0, ~0U) != -1) Mymyabort();
  if (nleu(~0U, 0) !=  0) Mymyabort();
  if (nltu(0, ~0U) != -1) Mymyabort();
  if (nltu(~0U, 0) !=  0) Mymyabort();
  
  exit(0);
}
