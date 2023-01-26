type i32 = BV32.
type arr = Map<i32, i32>.

loopify inline fn foo_loop (x : arr) (i : i32) (ret : i32) : i32 =
  match get(x, i) with
  | u => ret
  | x_i => foo_loop(x, add(i, i32(1)), add(ret, x_i)).

fn foo (x : arr) : i32 = foo_loop(x, i32(0), i32(0)).
