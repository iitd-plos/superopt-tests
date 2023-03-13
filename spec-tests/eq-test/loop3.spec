type i32, pair, variant = BV32, Prod[i32, i32], Sum[i32, i32].

loopify inline fn foo_impl (i : i32) (n : i32) (r : i32) : i32 =
  if sgt(i, n) then
    r
  else
    match pair{ add(i, i32{ 1 }), add(r, i) } with
    | fst, snd => foo_impl(fst, n, snd).
  
fn foo (n : i32) : i32 =
  match variant{ 1, foo_impl(i32{ 1 }, n, i32{ 0 }) } with
  | fst => n
  | snd => snd.
