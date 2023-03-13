type Unsigned = BV32.
type Vec = Sum[Unit, Prod[Unsigned, Vec]].
type Mat = Sum[Unit, Prod[Vec, Mat]].

loopify inline fn matfreq_impl2 (vec : Vec) (x : Unsigned) (res : Unsigned) : Unsigned =
  match vec with
  | u => res
  | vn => match vn with
          | val, vec2 => let val_res = if eq(val, x) then add(res, Unsigned{ 1 })
                                                     else res
                         in matfreq_impl2(vec2, x, val_res).

loopify inline fn matfreq_impl1 (mat : Mat) (x : Unsigned) (res : Unsigned) : Unsigned =
  match mat with
  | u => res
  | mn => match mn with
          | mvec, mat2 => let mvec_res = matfreq_impl2(mvec, x, res) in
                            matfreq_impl1(mat2, x, mvec_res).

fn matfreq (mat : Mat) (x : Unsigned) : Unsigned = matfreq_impl1(mat, x, Unsigned{ 0 }).
