type i32, list = BV32, Sum[Unit, Prod[i32, list]].

fn head_or (l : list) (val : i32) : i32 =
  match l with
  | empty => val
  | node => match node with
            | node_val, node_next => node_val.
