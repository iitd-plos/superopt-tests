inline fn foo_loop2 (x : Map<i32, Map<i32, i32>>) (i j n m ret : i32) -> i32 =
  if bvuge(j, m) then
    ret
  else
    let val = match x[i] with | None => i32(123)
                                           | Some x_i => match x_i[j] with | None => i32(456)
                                                                                             | Some x_ij => x_ij in
      foo_loop2(x, i, bvadd(j, i32(1)), n, m, if bvugt(i, j) then bvadd(ret, val) else bvsub(ret, val)).

inline fn foo_loop1 (x : Map<i32, Map<i32, i32>>) (i n m ret : i32) -> i32 =
  if bvuge(i, n) then
    ret
  else
    foo_loop1(x, bvadd(i, i32(1)), n, m, foo_loop2(x, i, i32(0), n, m, ret)).

fn foo (x : Map<i32, Map<i32, i32>>) (n m : i32) -> i32 = foo_loop1(x, i32(0), n, m, i32(0)).
