type i32 = BV32.
type Node, Tree = Prod[i32, Tree, Tree], Sum[Unit, Node].

fn sum_tree (t : Tree) : i32 =
    match t with
    | u => i32{ 0 }
    | node => match node with
              | val, left, right => let l = sum_tree(left) in
                                    let x = mul(i32{ 2 }, val) in
                                    let r = sum_tree(right) in
                                    add(x, add(l, r)).
