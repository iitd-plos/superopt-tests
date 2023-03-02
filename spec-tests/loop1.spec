type i32 = BV32.

loopify inline fn foo_impl (i : i32) (n : i32) (r : i32) : i32 =
  if sgt(i, n) then
    r
  else
    foo_impl(add(i, i32{ 1 }), n, add(r, i)).

fn foo (n : i32) : i32 = foo_impl(i32{ 1 }, n, i32{ 0 }).