fn foo (x : i32) -> i32 =
  let t1 = Map<i32, i32>()[i32(0) <- bvsub(x, i32(5))][i32(1) <- bvadd(i32(12), x)] in
    if bvslt(x, i32(0)) then match t1[i32(0)] with | None => i32(0) | Some y => y
                               else match t1[i32(1)] with | None => i32(0) | Some y => y.