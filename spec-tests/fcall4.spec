type i32, arr_t, mat_t = BV32, Map<i32, i32>, Map<i32, arr_t>.

loopify inline fn foo_impl2 (mat : mat_t) (n : i32) (m : i32) (i : i32) (j : i32) (x : i32) : i32 =
  if uge(j, m) then
    x
  else
    let val = match get(mat, i) with
                     | u => i32(0)
                     | mat_i => match get(mat_i, j) with
                                         | u2 => i32(0)
                                         | mat_ij => mat_ij in
            foo_impl2(mat, n, m, i, add(j, i32(1)), add(x, val)).

loopify inline fn foo_impl (mat : mat_t) (n : i32) (m : i32) (i : i32) (x : i32) : i32 =
  if uge(i, n) then
    x
  else
    let val = foo_impl2(mat, n, m, i, i32(0), x) in
           foo_impl(mat, n, m, add(i, i32(1)), val).

fn foo (mat : mat_t) (n : i32) (m : i32) : i32 = foo_impl(mat, n, m, i32(0), i32(0)).

fn bar (mat1 : mat_t) (mat2 : mat_t) (n : i32) (m : i32) : i32 = add(foo(mat1, n, m), foo(mat2, n, m)).
