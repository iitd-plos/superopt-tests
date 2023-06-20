// multiple loop exits between loop body PC and loop head PC
void merge(int L[], int R[], int nl, int nr, int arr[], int k)
{
  int i = 0;
  int j = 0;
  // loop head PC
  while (i < nl && j < nr) {
    // loop body PC
    if (L[i] <= R[j]) {
      arr[k++] = L[i++];
    } else {
      arr[k++] = R[j++];
    }
  }
  while (i < nl) {
    arr[k++] = L[i++];
  }
  while (j < nr) {
    arr[k++] = R[j++];
  }
}
