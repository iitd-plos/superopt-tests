// strength reduction
int barthe(int n, int c) {
    int i = 0;
    int j = 0;
    int x = 0;

    while (i < n) {
        j = 5 * i + c;
        x = x + j;
        i++;
    }
    return x;
}

int main()
{
  return 0;
}
