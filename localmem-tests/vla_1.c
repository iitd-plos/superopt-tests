#include <stdarg.h>
//#include "eqchecker_helper.h"

int vla_11(int* a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = a[i]*a[i];
  }
  return v[0]+v[n-1];
}

int vla_12(int *a, unsigned n)
{
  if (n == 0)
    return 0;

  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = a[i]*a[i];
  }
  int ret = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned j = 0; j < n; ++j) {
    MYmyDBG();
    ret += v[j];
  }
  return ret;
}

void vla_13(int *a, unsigned n)
{
  if (n == 0)
    return;
  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = a[i]*a[i];
  }
  MYmyputs("Array:");
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned j = 0; j < n; ++j) {
    MYmyprint_int(v[j]);
  }
}

// local declaration not on entry edge
int vla_14(int* a, unsigned n, int* b)
{
  if (n == 0)
    return 0;

  b[0] = a[0];
  int mx = a[0];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 1; i < n; ++i) {
    MYmyDBG();
    b[i] = b[i-1] + a[i];
    if (a[i] > mx)
      mx = a[i];
  }
  int v[n];
#pragma clang loop vectorize(disable) unroll(disable)
  for (unsigned i = 0; i < n; ++i) {
    MYmyDBG();
    v[i] = (mx-a[i])*b[i];
  }
  return v[0] > v[n-1] ? v[0] : v[n-1];
}

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

// vla inside for loop -- simplified
int vla_17(const char* s)
{
  int n = MYmystrlen(s);
  if (n <= 0) {
    return 0;
  }
  int ret = 0;
  for (int i = 1; i < n; ++i) {
    char t[i];
    MYmyDBG();
    for (int j = 0; j < i; ++j)
      t[j] = MYmywormhole2();
    ret += t[0] + t[i-1];
  }
  return ret;
}
