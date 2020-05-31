#include"eqchecker_helper.h"
long long foo(long long v) { return v / -0x080000000LL; }
int main(int argc, char **argv) { if (foo(0x080000000LL) != -1) Mymyabort(); exit (0); }
