type i32 = BV32.
type opt_t = Sum[Unit, i32].

fn update_val (val : i32) : i32 = sub(val, i32{ 10 }).

fn opt_map (opt : opt_t) : opt_t =
  match opt with
  | u => opt
  | val => opt_t{ 1, update_val(val) }.
