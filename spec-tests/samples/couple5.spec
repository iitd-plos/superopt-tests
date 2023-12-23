type i32, arr, mat = BV32, Map[i32, i32], Map[i32, arr].

loopify inline fn foo_loop2 (x : mat) (i : i32) (j : i32) (n : i32) (m : i32) (ret : i32) : i32 =
  if uge(j, m)
    then ret
  else let val = match get(x, i) with
                            | u => i32{ 123 }
                            | x_i => match get(x_i, j) with
                                           | u2 => i32{ 456 }
                                           | x_ij => x_ij in
           foo_loop2(x, i, add(j, i32{ 1 }), n, m, add(ret, val)).

loopify inline fn foo_loop1 (x : mat) (i : i32) (n : i32) (m : i32) (ret : i32) : i32 =
  if uge(i, n)
    then ret
  else
    foo_loop1(x, add(i, i32{ 1 }), n, m, foo_loop2(x, i, i32{ 0 }, n, m, ret)).

fn foo (x : mat) (n : i32) (m : i32) : i32 = foo_loop1(x, i32{ 0 }, n, m, i32{ 0 }).
