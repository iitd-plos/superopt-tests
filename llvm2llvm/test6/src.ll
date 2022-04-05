target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

define i4 @main(i4 %x){
  %a = sdiv i4 %x, 5
  %r = sub i4 0, %a
  ret i4 %r
}
