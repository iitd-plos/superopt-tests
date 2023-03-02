type i32 = BV32.

fn foo (x : Prod[i32, i32]) : i32 =
  match x with | f, s => sub(f, s).
