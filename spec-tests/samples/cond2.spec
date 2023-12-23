type i32, arr = BV32, Map[i32, i32].

fn foo (x : i32) : i32 =
  let t1 = set(set(arr{ }, i32{ 0 }, sub(x, i32{ 5 })), i32{ 1 }, add(i32{ 12 }, x)) in
    if slt(x, i32{ 0 })
      then match get(t1, i32{ 0 }) with
                | u => i32{ 0 }
                | y => y
      else match get(t1, i32{ 1 }) with
                | u => i32{ 0 }
                | y => y.
