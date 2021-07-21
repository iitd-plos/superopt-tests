#include <stdarg.h>
//#include "eqchecker_helper.h"

// fcall after local declaration
char vla_15(char* s)
{
  unsigned n = MYmystrlen(s);
  if (n == 0)
    return '\0';
  char t[n];
  MYmyputs("Starting...");
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    t[i] = i ^ s[i];
  }
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 4; i < n-4; i+= 4) {
    MYmyDBG();
    t[i] = t[i-1] & t[i-2] + t[i-3] & t[i-4];
  }
  return t[n-1];
}

// vla inside for loop
int vla_16(const char* s)
{
  int n = MYmystrlen(s);
  if (n == 0) {
    return 0;
  }
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    MYmyDBG();
    //MYmyputs("Starting...");
#pragma clang loop vectorize(disable) unroll(disable)
    for (int j = 0; j < i; ++j) {
      MYmyDBG();
      t[j] = i ^ s[i];
    }
#pragma clang loop vectorize(disable) unroll(disable)
    for (int j = 4; j < i-4; j += 4) {
      MYmyDBG();
      t[j] = t[j-1] & t[j-2] + t[j-3] & t[j-4];
    }
    ret += t[i-1];
  }
  return ret;
}
