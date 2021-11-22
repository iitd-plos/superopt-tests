fn foo (x : i32)-> i32 =
  let t1 = Opt<i32>(x) in
    match t1 with
    | None => i32(0)
    | Some y => bvadd(y, i32(3)).