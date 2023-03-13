// eq-test passes because we skip all dst-UB checks for now
// will need to prove that n < 100 for UB checks later on
int m[100];

int *foo(unsigned n) {
  for (unsigned i = 0; i < n; ++i) {
    m[i] = i;
  }
  return m;
}
