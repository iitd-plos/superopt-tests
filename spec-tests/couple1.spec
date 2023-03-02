type i32 = BV32.
type opt = Sum[Unit, i32].

fn foo (x : opt) : i32 =
  match x with
  | u => i32{ 5 }
  | x_val => x_val.
