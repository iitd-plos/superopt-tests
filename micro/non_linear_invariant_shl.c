// adapted from nsieve:main()

int foo(int);
void bar(int, int);

void
non_linear_invariant_shl(int n)
{
  for (int i = 0; i < n; ++i) {
    int x = foo(10000 << (n-i));
    bar(10000 << (n-i), x);
  }
}
