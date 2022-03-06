fn update_val (val : i32) -> i32 = bvsub(val, i32(10)).

fn opt_map (opt : Opt<i32>) -> Opt<i32> =
  match opt with
  | None => opt
  | Some val => Opt<i32>(update_val(val)).
