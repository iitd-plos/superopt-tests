#include"eqchecker_helper.h"
extern void Mymyabort(void);
typedef void (*frob)();
frob f[] = {Mymyabort};

int main(void)
{
  exit(0);
}
