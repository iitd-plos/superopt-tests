type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Unit, Prod[Char, CStr]].
type OptCStr = Sum[Unit, CStr].

loopify inline fn strpbrk_impl2 (accept : CStr) (c : Char) : Bool =
  assuming not(is(accept, 0)) do
  match accept with
  | u => false
  | u => false
  | n => match n with
         | ch, accept2 => if eq(ch, c) then true
                                       else strpbrk_impl2(accept2, c).

loopify inline fn strpbrk_impl (s : CStr) (accept : CStr) : OptCStr =
  assuming not(is(s, 0)) do
  match s with
  | u => OptCStr{ 0, unit }
  | u => OptCStr{ 0, unit }
  | n => match n with
         | ch, s2 => let found = strpbrk_impl2(accept, ch) in
                     if found then OptCStr{ 1, s }
                              else strpbrk_impl(s2, accept).

fn strpbrk (s : CStr) (accept : CStr) : OptCStr = strpbrk_impl(s, accept).
