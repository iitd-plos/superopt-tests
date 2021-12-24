typedef struct {
  int x, y;
  long long z;
} Foo;

int *foo(int *arr) {
  Foo *f = (Foo *)arr;
  f->x = 0;
  f->y = 1;
  f->z = 2;
  return arr;
}