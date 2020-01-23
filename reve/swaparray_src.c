// swap using temporary
void swap(int *a, int *b, int n) {
    int i = 0;
    int t;
    while (i < n) {
        t = a[i];
        a[i] = b[i];
        b[i] = t;
        i++;
    }
}

int main(int argc, char* argv[])
{
  return 0;
}
