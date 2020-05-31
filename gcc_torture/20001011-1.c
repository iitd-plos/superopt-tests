#include"eqchecker_helper.h"
extern void Mymyabort(void);
extern int strcmp(const char *, const char *);

int foo(const char *a)
{
    return strcmp(a, "main");
}

int main(void)
{
    if(foo(__FUNCTION__))
        Mymyabort();
    return 0;
}
