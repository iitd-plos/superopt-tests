#include <stdarg.h>
#include <stdlib.h>
#include <stdbool.h>
//#include "eqchecker_helper.h"

int vla_0(bool n)
{
  bool *p = NULL;
  if (n) {
    p = &n;
  }

  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = p ? 0 : i*(i+1);
  }
  return v[0]+v[n-1];
}
