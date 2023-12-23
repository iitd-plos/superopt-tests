type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Unit, Prod[Char, CStr]].

loopify inline fn strspn_impl2 (accept : CStr) (c : Char) : Bool =
  assuming not(is(accept, 0)) do
  match accept with
  | u => false
  | u => false
  | n => match n with
         | ch, accept2 => if eq(ch, c) then true
                                       else strspn_impl2(accept2, c).

loopify inline fn strspn_impl (s : CStr) (accept : CStr) (l : Size) : Size =
  assuming not(is(s, 0)) do
  match s with
  | u => Size{ 0 }
  | u => l
  | n => match n with
         | ch, s2 => let found = strspn_impl2(accept, ch) in
                     if found then strspn_impl(s2, accept, add(l, Size{ 1 }))
                              else l.

fn strspn (s : CStr) (accept : CStr) : Size = strspn_impl(s, accept, Size{ 0 }).
