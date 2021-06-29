#define MAX(x, y) ((x > y) ? (x) : (y))

int lcs(const char *s, const char *t, int m, int n)
{
  int dp[m+1][n+1];

  for (int i = 0; i <= m; ++i) {
    MYmyDBG();
    dp[i][0] = 0;
  }
  for (int j = 0; j <= n; ++j) {
    MYmyDBG();
    dp[0][j] = 0;
  }

  for (int i = 1; i <= m; i++) {
    MYmyDBG();
    for (int j = 1; j <= n; j++) {
      MYmyDBG();
      if (s[i-1] == t[j-1]) {
        dp[i][j] = dp[i-1][j-1] + 1;
      } else {
        dp[i][j] = MAX(dp[i-1][j], dp[i][j-1]);
      }
    }
  }
  return dp[m][n];
}
