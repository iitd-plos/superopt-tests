int loop_unswitching(int t, int c) {
  int x = 0;

  if (0 < t) {
      while(0 < c) {
          x += c*t;
          c--;
      }
  } else {
      while(0 < c) {
          x -= c*t;
          c--;
      }
  }

  return x;
}

int main()
{
  return 0;
}
