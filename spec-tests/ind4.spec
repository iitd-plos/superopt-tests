type i32, list = BV32, Sum[Unit, Prod[i32, list]].

loopify inline fn foo_impl (l : list) (sum : i32) : i32 =
  match l with
  | u => sum
  | n => match n with
           | val, l2 => foo_impl(l2, add(val, sum)).

fn foo (l : list) : i32 = foo_impl(l, i32{ 0 }).
