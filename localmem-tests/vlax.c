#include <alloca.h>

int vlax_0(char* s)
{
  if (!s)
    return 0;
  int n = strlen(s);
  char* a;
  if (n < 4096) {
    a = alloca(n);
    if (!a) return 0;
  } else {
    a = MYmymalloc(n);
    if (!a) return 0;
  }
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < n; ++i) {
    a[i] = s[i] ^ 1;
  }
  int ret = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < n; ++i) {
    ret += a[i];
  }
  if (!(n < 4096))
    MYmyfree(a);
  return ret;
}

#define MAX(x, y) ((x > y) ? (x) : (y))

int lcs(const char *s, const char *t, int m, int n)
{
  int dp[m+1][n+1];

  for (int i = 0; i <= m; ++i) dp[i][0] = 0;
  for (int j = 0; j <= n; ++j) dp[0][j] = 0;

  for (int i = 1; i <= m; i++) {
    for (int j = 1; j <= n; j++) {
      if (s[i-1] == t[j-1]) {
        dp[i][j] = dp[i-1][j-1] + 1;
      } else {
        dp[i][j] = MAX(dp[i-1][j], dp[i][j-1]);
      }
    }
  }
  return dp[m][n];
}
