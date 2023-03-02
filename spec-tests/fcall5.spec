type i32, arr_t, mat_t = BV32, Map[i32, i32], Map[i32, arr_t].

loopify inline fn foo_impl2 (a_i : arr_t) (j : i32) (x : i32) : i32 =
  match get(a_i, j) with
  | u => x
  | a_ij => foo_impl2(a_i, add(j, i32{ 1 }), add(x, a_ij)).

loopify inline fn foo_impl (a : mat_t) (i : i32) (x : i32) : i32 =
  match get(a, i) with
  | u => x
  | a_i => foo_impl(a, add(i, i32{ 1 }), foo_impl2(a_i, i32{ 0 }, x)).

fn foo (a : mat_t) : i32 = foo_impl(a, i32{ 0 }, i32{ 0 }).

fn bar (a1 : mat_t) (a2 : mat_t) : i32 = add(foo(a1), foo(a2)).
