type i32, arr = BV32, Map[i32, i32].

loopify inline fn foo_impl (i : i32) (n : i32) (r : i32) : i32 =
  if sgt(i, n) then
    r
  else
    let m1 = set(set(arr{ }, i32{ 4 }, add(i, i32{ 1 })), i32{ 10 }, add(r, i)) in
          match get(m1, i32{ 10 }) with
          | u => i32{ 0 }
          | y2 => match get(m1, i32{ 4 }) with
                        | u2 => i32{ 0 }
                        | y1 => foo_impl(y1, n, y2).

fn foo (n : i32) : i32 = foo_impl(i32{ 1 }, n, i32{ 0 }).
