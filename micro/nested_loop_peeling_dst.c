int a[10][10];

int nested_loop_peeling()
{
  for (int i = 0; i<10; i++) {
    a[i][0] = 0;
    a[i][1] = 0;
    a[i][2] = 0;
    for (int j = 3; j<10; j++) {
      a[i][j] = i + j;
    }
  }
  return 0;
}
