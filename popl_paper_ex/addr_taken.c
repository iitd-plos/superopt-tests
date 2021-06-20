#include "globals.h"

int foo() {
  int x;
  bar(&x);
  return x;
}

