#include"eqchecker_helper.h"
/* Distilled from optimization/863.  */

extern void Mymyabort (void);
extern void exit (int);
extern void ok (int);

typedef struct
{
  int x, y, z;
} Data;

void find (Data *first, Data *last)
{
  int i;
  for (i = (last - first) >> 2; i > 0; --i)
    ok(i);
  Mymyabort ();
}

void ok(int i)
{
  if (i != 1)
    Mymyabort ();
  exit (0);
}

int
main ()
{
  Data DataList[4];
  find (DataList + 0, DataList + 4);
}
