inline fn foo_impl (i n r : i32) -> i32 =
  if bvsgt(i, n) then r
                      else let m1 = Map<i32, i32>()[i32(4) <- bvadd(i, i32(1))][i32(10) <- bvadd(r, i)] in
                                  match m1[i32(10)] with
                                  | None => i32(0)
                                  | Some y2 => match m1[i32(4)] with
                                                         | None => i32(0)
                                                         | Some y1 => foo_impl(y1, n, y2).

fn foo (n : i32) -> i32 = foo_impl(i32(1), n, i32(0)).
