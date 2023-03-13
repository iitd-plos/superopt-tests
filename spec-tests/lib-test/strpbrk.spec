type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].

inline fn null_cstr : CStr = CStr{ 0, unit }.

loopify inline fn strpbrk_impl2 (accept : CStr) (c : Char) : Bool =
  assuming is(accept, 1) do
  match accept with
  | u => false
  | accept2 => match accept2 with
          | u => false
          | n => match n with
                 | ch, accept3 => if eq(ch, c) then true
                                               else strpbrk_impl2(accept3, c).

loopify inline fn strpbrk_impl (s : CStr) (accept : CStr) : CStr =
  assuming is(s, 1) do
  match s with
  | u => null_cstr()
  | s2 => match s2 with
          | u => null_cstr()
          | n => match n with
                 | ch, s3 => let found = strpbrk_impl2(accept, ch) in
                             if found then s
                                      else strpbrk_impl(s3, accept).

fn strpbrk (s : CStr) (accept : CStr) : CStr = strpbrk_impl(s, accept).
