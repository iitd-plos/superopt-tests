#include"eqchecker_helper.h"
typedef union
{
  int __lock;
} mypthread_mutex_t;

extern void Mymyabort (void);

int main()
{
    struct { int c; mypthread_mutex_t m; } r = { .m = 0 };
    if (r.c != 0)
      Mymyabort ();
    return 0;
}
