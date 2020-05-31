#include"eqchecker_helper.h"
#include <limits.h>

#ifndef CHAR_BIT
#define CHAR_BIT 8
#endif

#define ROR(a,b) (((a) >> (b)) | ((a) << ((sizeof (a) * CHAR_BIT) - (b))))
#define ROL(a,b) (((a) << (b)) | ((a) >> ((sizeof (a) * CHAR_BIT) - (b))))

#define CHAR_VALUE ((char)0xf234)
#define SHORT_VALUE ((short)0xf234)
#define INT_VALUE ((int)0xf234)
#define LONG_VALUE ((long)0xf2345678L)
#define LL_VALUE ((long long)0xf2345678abcdef0LL)

#define SHIFT1 4
#define SHIFT2 ((sizeof (long long) * CHAR_BIT) - SHIFT1)

char c = CHAR_VALUE;
short s = SHORT_VALUE;
int i = INT_VALUE;
long l = LONG_VALUE;
long long ll = LL_VALUE;
int shift1 = SHIFT1;
int shift2 = SHIFT2;

main ()
{
  if (ROR (c, shift1) != ROR (CHAR_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (c, SHIFT1) != ROR (CHAR_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (s, shift1) != ROR (SHORT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (s, SHIFT1) != ROR (SHORT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (i, shift1) != ROR (INT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (i, SHIFT1) != ROR (INT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (l, shift1) != ROR (LONG_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (l, SHIFT1) != ROR (LONG_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (ll, shift1) != ROR (LL_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (ll, SHIFT1) != ROR (LL_VALUE, SHIFT1))
    Mymyabort ();

  if (ROR (ll, shift2) != ROR (LL_VALUE, SHIFT2))
    Mymyabort ();

  if (ROR (ll, SHIFT2) != ROR (LL_VALUE, SHIFT2))
    Mymyabort ();

  if (ROL (c, shift1) != ROL (CHAR_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (c, SHIFT1) != ROL (CHAR_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (s, shift1) != ROL (SHORT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (s, SHIFT1) != ROL (SHORT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (i, shift1) != ROL (INT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (i, SHIFT1) != ROL (INT_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (l, shift1) != ROL (LONG_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (l, SHIFT1) != ROL (LONG_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (ll, shift1) != ROL (LL_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (ll, SHIFT1) != ROL (LL_VALUE, SHIFT1))
    Mymyabort ();

  if (ROL (ll, shift2) != ROL (LL_VALUE, SHIFT2))
    Mymyabort ();

  if (ROL (ll, SHIFT2) != ROL (LL_VALUE, SHIFT2))
    Mymyabort ();

  exit (0);
}
