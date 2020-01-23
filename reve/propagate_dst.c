int garr[100];

// memory safety check fails due to a[0]
void propagate(int* a, int n)
{
  int k = 0;
  while (k+1 < n) {
    a[k+1] = a[0];
    k++;
  }
}

int main(int argc, char* argv[])
{
  propagate(garr, sizeof garr / sizeof(int));
  return 0;
}
