fn foo (x : i32) -> i32 =
  let t1 = if bvsgt(x, i32(0)) then Opt<i32>(i32(1)) else Opt<i32>(i32(2)) in
    match t1 with | None => i32(0) | Some y => y.
