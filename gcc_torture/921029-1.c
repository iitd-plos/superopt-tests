#include"eqchecker_helper.h"
typedef unsigned long long ULL;
ULL back;
ULL hpart, lpart;
ULL
build(long h, long l)
{
  hpart = h;
  hpart <<= 32;
  lpart = l;
  lpart &= 0xFFFFFFFFLL;
  back = hpart | lpart;
  return back;
}

main()
{
  if (build(0, 1) != 0x0000000000000001LL)
    Mymyabort();
  if (build(0, 0) != 0x0000000000000000LL)
    Mymyabort();
  if (build(0, 0xFFFFFFFF) != 0x00000000FFFFFFFFLL)
    Mymyabort();
  if (build(0, 0xFFFFFFFE) != 0x00000000FFFFFFFELL)
    Mymyabort();
  if (build(1, 1) != 0x0000000100000001LL)
    Mymyabort();
  if (build(1, 0) != 0x0000000100000000LL)
    Mymyabort();
  if (build(1, 0xFFFFFFFF) != 0x00000001FFFFFFFFLL)
    Mymyabort();
  if (build(1, 0xFFFFFFFE) != 0x00000001FFFFFFFELL)
    Mymyabort();
  if (build(0xFFFFFFFF, 1) != 0xFFFFFFFF00000001LL)
    Mymyabort();
  if (build(0xFFFFFFFF, 0) != 0xFFFFFFFF00000000LL)
    Mymyabort();
  if (build(0xFFFFFFFF, 0xFFFFFFFF) != 0xFFFFFFFFFFFFFFFFLL)
    Mymyabort();
  if (build(0xFFFFFFFF, 0xFFFFFFFE) != 0xFFFFFFFFFFFFFFFELL)
    Mymyabort();
  exit(0);
}
