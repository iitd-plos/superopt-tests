type i32, list = BV32, Sum<Unit, Prod<i32, list>>.

fn foo (l : list): list =
  match l with
  | empty => l
  | node => match node with
                     | node_val, node_next => node_next.
