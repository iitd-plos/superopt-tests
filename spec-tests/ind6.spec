type i32, tree = BV32, Sum[Unit, Prod[i32, tree, tree]].

fn foo (t : tree) : tree =
    match t with
    | u => t
    | node => match node with
              | val, left, right => match left with
                                    | u2 => right
                                    | node2 => left.
