#include "globals.h"

int bar(int *p) {
  int x;
  if(!p) {
    p = &x; }
  baz(p);
  return *p;
}
