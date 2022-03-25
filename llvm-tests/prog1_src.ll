target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @main(){
	%i_1 = shl i4 3, 2
	%i_2 = icmp eq i4 %i_1, 0
	br i1 %i_2, label %foo, label %end
	foo:
		%i_3 = shl i4 3, %i_1
		br label %end
	end:
	ret void
}
