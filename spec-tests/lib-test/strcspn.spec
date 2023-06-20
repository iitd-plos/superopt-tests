type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Unit, Prod[Char, CStr]].

loopify inline fn strcspn_impl2 (reject : CStr) (c : Char) : Bool =
  assuming not(is(reject, 0)) do
  match reject with
  | u => false
  | u => false
  | n => match n with
         | ch, reject2 => if eq(ch, c) then true
                                       else strcspn_impl2(reject2, c).

loopify inline fn strcspn_impl (s : CStr) (reject : CStr) (l : Size) : Size =
  assuming not(is(s, 0)) do
  match s with
  | u => Size{ 0 }
  | u => l
  | n => match n with
         | ch, s2 => let found = strcspn_impl2(reject, ch) in
                         if found then l
                                  else strcspn_impl(s2, reject, add(l, Size{ 1 })).

fn strcspn (s : CStr) (reject : CStr) : Size = strcspn_impl(s, reject, Size{ 0 }).
