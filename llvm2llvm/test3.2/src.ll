target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

define i4 @main(i4 %x){
  %r1 = xor i4 %x, -1
  %r2 = add i4 %r1, 3333
  ret i4 %r2
}
