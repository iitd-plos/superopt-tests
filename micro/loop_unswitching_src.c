int loop_unswitching(int t, int c) {
    int x = 0;

    while (0 < c) {
        if (0 < t) {
            x += c*t;
        } else {
            x -= c*t;
        }
        c = c - 1;
    }

    return x;
}

int main()
{
  return 0;
}
