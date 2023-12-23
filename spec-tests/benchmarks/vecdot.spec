type Unsigned = BV32.
type Vec = Sum[Unit, Prod[Unsigned, Vec]].

loopify inline fn vecdot_impl (x : Vec) (y : Vec) (res : Unsigned) : Unsigned =
  assuming eq(is(x, 1), is(y, 1)) do
  match x with
  | u => res
  | xn => match xn with
          | xval, x2 => match y with
                        | u => res
                        | yn => match yn with
                                | yval, y2 => vecdot_impl(x2, y2, add(res, mul(xval, yval))).

fn vecdot (x : Vec) (y : Vec) : Unsigned = vecdot_impl(x, y, Unsigned{ 0 }).
