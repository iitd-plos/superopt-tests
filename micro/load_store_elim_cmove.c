int P;
int Q;
int R;

int load_load_elim(int C, int D)
{
  // compiler can convert ?: to cmove
  int* p = (C-D) ? &P : &Q;
  int x = *p;
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C+D; ++i) {
    acc += (i&3);
  }
  R = acc;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C-D; ++i) {
    acc += (i^3);
  }
  return acc+x+*p;
}

int load_store_elim(int C, int D)
{
  int* p = (C-D) ? &P : &Q;
  int x = *p;
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C+D; ++i) {
    acc += (i&3);
  }
  R = acc;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C-D; ++i) {
    acc += (i^3);
  }
  *p = x;
  return acc+x;
}

int store_load_elim(int C, int D)
{
  int* p = (C-D) ? &P : &Q;
  *p = C-D;
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C+D; ++i) {
    acc += (i&3);
  }
  R = acc;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C-D; ++i) {
    acc += (i^3);
  }
  return *p + acc;
}

int store_store_elim(int C, int D)
{
  int* p = (C-D) ? &P : &Q;
  *p = C-D;
  int acc = 0;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C+D; ++i) {
    acc += (i&3);
  }
  R = acc;
#pragma clang loop vectorize(disable) unroll(disable)
  for (int i = 0; i < C-D; ++i) {
    acc += (i^3);
  }
  *p = C-D;
  return acc;
}
