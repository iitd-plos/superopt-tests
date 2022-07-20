type i32 = BV32.
type opt = Sum<Unit, i32>.

fn foo (x : i32) : i32 =
  match if sgt(x, i32(0)) then opt(1, i32(1)) else opt(1, i32(2)) with
  | u => i32(0)
  | y => y.
