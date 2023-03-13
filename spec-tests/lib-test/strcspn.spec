type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].

loopify inline fn strcspn_impl2 (reject : CStr) (c : Char) : Bool =
  assuming is(reject, 1) do
  match reject with
  | u => false
  | reject2 => match reject2 with
               | u => false
               | n => match n with
                      | ch, reject3 => if eq(ch, c) then true
                                                    else strcspn_impl2(reject3, c).

loopify inline fn strcspn_impl (s : CStr) (reject : CStr) (l : Size) : Size =
  assuming is(s, 1) do
  match s with
  | u => Size{ 0 }
  | s2 => match s2 with
          | u => l
          | n => match n with
                 | ch, s3 => let found = strcspn_impl2(reject, ch) in
                                 if found then l
                                 else strcspn_impl(s3, reject, add(l, Size{ 1 })).

fn strcspn (s : CStr) (reject : CStr) : Size = strcspn_impl(s, reject, Size{ 0 }).
