type i32 = BV32.

fn foo (x : i32) : i32 =
  if slt(x, i32{ 0 }) then
    sub(x, i32{ 5 })
    else add(i32{ 12 }, x).
