target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

define i32 @main(i32 %x){
  %ret1 = add i32 %x, %x;
  %ret2 = add i32 %ret1, %ret1;
  ret i32 %ret2;
}