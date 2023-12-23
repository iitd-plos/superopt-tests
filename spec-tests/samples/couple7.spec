type i32 = BV32.
type arr = Map[i32, i32].
type mat = Map[i32, arr].

loopify inline fn foo_loop2 (x_i : arr) (j : i32) (ret : i32) : i32 =
  match get(x_i, j) with
  | u => ret
  | x_ij => foo_loop2(x_i, add(j, i32{ 1 }), add(ret, x_ij)).

loopify inline fn foo_loop1 (x : mat) (i : i32) (ret : i32) : i32 =
  match get(x, i) with
  | u => ret
  | x_i => foo_loop1(x, add(i, i32{ 1 }), foo_loop2(x_i, i32{ 0 }, ret)).

fn foo (x : mat) : i32 = foo_loop1(x, i32{ 0 }, i32{ 0 }).
