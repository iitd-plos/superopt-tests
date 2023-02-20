int a[10][10];

int main() {
  for (int i = 0; i<10; i++) {
    for (int j = 0; j<10; j++) {
      if (j < 3)
        a[i][j] = 0;
      else
        a[i][j] = i + j;
    }
  }
  return 0;
}
