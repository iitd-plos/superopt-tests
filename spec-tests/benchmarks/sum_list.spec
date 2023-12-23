type i32, list = BV32, Sum[Unit, Prod[i32, list]].

loopify inline fn sum_list_impl (l : list) (sum : i32) : i32 =
  match l with
  | u => sum
  | n => match n with
           | val, l2 => sum_list_impl(l2, add(val, sum)).

fn sum_list (l : list) : i32 = sum_list_impl(l, i32{ 0 }).
