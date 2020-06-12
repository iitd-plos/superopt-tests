#include"eqchecker_helper.h"
char B[256 * sizeof(void *)];
typedef void *MYFILE;
typedef struct globals {
    int c;
    MYFILE *l;
} __attribute__((may_alias)) T;
void add_input_file(MYFILE *file)
{
  (*(T*)&B).l[0] = file;
}
//extern void Mymyabort (void);
int main()
{
  FILE x;
  (*(T*)&B).l = &x;
  add_input_file ((void *)-1);
  if ((*(T*)&B).l[0] != (void *)-1)
    Mymyabort ();
  return 0;
}
