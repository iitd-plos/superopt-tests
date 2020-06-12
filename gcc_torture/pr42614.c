#include"eqchecker_helper.h"
extern void *malloc(__SIZE_TYPE__);
extern void Mymyabort(void);
extern void free(void *);

typedef struct SEntry
{
  unsigned char num;
} TEntry;

typedef struct STable
{
  TEntry data[2];
} TTable;

TTable *init ()
{
  return malloc(sizeof(TTable));
}

void
expect_func (int a, unsigned char *b) __attribute__ ((noinline));

static inline void
inlined_wrong (TEntry *entry_p, int flag);

void
inlined_wrong (TEntry *entry_p, int flag)
{
  unsigned char index;
  entry_p->num = 0;

  if (flag == 0)
    Mymyabort();

  for (index = 0; index < 1; index++)
    entry_p->num++;

  if (!entry_p->num)
    {
      Mymyabort();
    }
}

void
expect_func (int a, unsigned char *b)
{
  if (abs ((a == 0)))
    Mymyabort ();
  if (abs ((b == 0)))
    Mymyabort ();
}

int
main ()
{
  unsigned char index = 0;
  TTable *table_p = init();
  TEntry work;

  inlined_wrong (&(table_p->data[1]), 1);
  expect_func (1, &index);
  inlined_wrong (&work, 1);

  free (table_p);

  return 0;
}

