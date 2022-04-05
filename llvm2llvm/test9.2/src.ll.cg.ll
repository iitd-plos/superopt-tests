; ModuleID = 'src.ll'
source_filename = "src.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-gnu"

define i32 @main(i32 %X, i32 %Op0) {
  %Op1 = sub i32 0, %X
  %r = srem i32 %Op0, %Op1
  ret i32 %r
}
