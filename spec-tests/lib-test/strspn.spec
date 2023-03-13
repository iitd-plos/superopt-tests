type Size = BV32.
type Char = BV8.
type CStr = Sum[Unit, Sum[Unit, Prod[Char, CStr]]].

loopify inline fn strspn_impl2 (accept : CStr) (c : Char) : Bool =
  assuming is(accept, 1) do
  match accept with
  | u => false
  | accept2 => match accept2 with
               | u => false
               | n => match n with
                      | ch, accept3 => if eq(ch, c) then true
                                                    else strspn_impl2(accept3, c).

loopify inline fn strspn_impl (s : CStr) (accept : CStr) (l : Size) : Size =
  assuming is(s, 1) do
  match s with
  | u => Size{ 0 }
  | s2 => match s2 with
          | u => l
          | n => match n with
                 | ch, s3 => let found = strspn_impl2(accept, ch) in
                                 if found then strspn_impl(s3, accept, add(l, Size{ 1 }))
                                          else l.

fn strspn (s : CStr) (accept : CStr) : Size = strspn_impl(s, accept, Size{ 0 }).
