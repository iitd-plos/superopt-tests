// strength reduction
int barthe(int n, int c) {
    int i = 0;
    int j = c;
    int x = 0;

    while (i < n) {
        j = j + 5;
        x = x + j;
        i++;
    }
    return x;
}

int main()
{
  return 0;
}
