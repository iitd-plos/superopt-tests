fn foo (x : i32) -> i32 =
  if bvslt(x, i32(0)) then bvsub(x, i32(5))
  else bvadd(i32(12), x).