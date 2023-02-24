int printf(const char*, ...);
int foo(int);
void bar();

void fcalls_hoist_merge(int k)
{
  if (foo(k))
    printf("then-branch");
  else
    printf("else-branch");
  bar();
}

void fcalls_sink_merge(int k)
{
  if (k) {
    int r = foo(k);
    if (r == 0 || r == 1)
      bar();
  } else {
    int q = foo(k);
    if (q == 0 || q == 3)
      bar();
  }
}
