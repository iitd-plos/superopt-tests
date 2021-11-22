inline fn foo_impl (i n r : i32) -> i32 =
  if bvsgt(i, n) then r
                      else let t1 = Map<i32, i32>()[i <- bvadd(i, i32(1))][r <- bvadd(r, i)] in
                                  foo_impl(match t1[i] with | None => i32(0) | Some y => y, n, match t1[r] with | None => i32(0) | Some y => y).

fn foo (n : i32) -> i32 = foo_impl(i32(1), n, i32(0)).