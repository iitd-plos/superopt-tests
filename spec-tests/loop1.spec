inline fn foo_impl (i n r : i32) -> i32 =
  if bvsgt(i, n) then r
                      else foo_impl(bvadd(i, i32(1)), n, bvadd(r, i)).

fn foo (n : i32) -> i32 = foo_impl(i32(1), n, i32(0)).