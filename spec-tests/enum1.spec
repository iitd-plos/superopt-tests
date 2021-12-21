type idx_t = i32.
type enum_t = Enum<x y z : idx_t>.

fn foo (x : idx_t) -> enum_t =
  if eq(x, idx_t(0)) then enum_t('x')
  else if eq(x, idx_t(1)) then enum_t('y')
  else enum_t('z').
