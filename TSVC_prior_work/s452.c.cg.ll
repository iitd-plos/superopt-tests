; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s452.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s452.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@val = external dso_local local_unnamed_addr global i32, align 4
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s452() local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* @val, align 4, !dbg !16
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  %broadcast.splatinsert24 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  br label %vector.body, !dbg !19

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !20
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3132 = bitcast i8* %uglygep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8000, !dbg !21
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep33, align 16, !dbg !21
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8001, !dbg !21
  %wide.load21 = load <4 x i32>, <4 x i32>* %scevgep34, align 16, !dbg !21
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %scevgep43 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 8000, !dbg !22
  %wide.load22 = load <4 x i32>, <4 x i32>* %scevgep43, align 16, !dbg !22
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4142, i64 8001, !dbg !22
  %wide.load23 = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !22
  %1 = mul <4 x i32> %broadcast.splat, %wide.load22, !dbg !23
  %2 = mul <4 x i32> %broadcast.splat25, %wide.load23, !dbg !23
  %3 = add <4 x i32> %wide.load22, %wide.load, !dbg !24
  %4 = add <4 x i32> %wide.load23, %wide.load21, !dbg !24
  %5 = add <4 x i32> %3, %1, !dbg !25
  %6 = add <4 x i32> %4, %2, !dbg !25
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !26
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8000, !dbg !26
  store <4 x i32> %5, <4 x i32>* %scevgep53, align 16, !dbg !26
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5152, i64 8001, !dbg !26
  store <4 x i32> %6, <4 x i32>* %scevgep54, align 16, !dbg !26
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2829 = bitcast i8* %uglygep28 to <4 x i32>*
  %scevgep30 = getelementptr <4 x i32>, <4 x i32>* %uglygep2829, i64 8002, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep30, align 16, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep27 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep27, i64 8003, !dbg !21
  %wide.load21.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !21
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 8002, !dbg !22
  %wide.load22.1 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !22
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3536, i64 8003, !dbg !22
  %wide.load23.1 = load <4 x i32>, <4 x i32>* %scevgep37, align 16, !dbg !22
  %7 = mul <4 x i32> %broadcast.splat, %wide.load22.1, !dbg !23
  %8 = mul <4 x i32> %broadcast.splat25, %wide.load23.1, !dbg !23
  %9 = add <4 x i32> %wide.load22.1, %wide.load.1, !dbg !24
  %10 = add <4 x i32> %wide.load23.1, %wide.load21.1, !dbg !24
  %11 = add <4 x i32> %9, %7, !dbg !25
  %12 = add <4 x i32> %10, %8, !dbg !25
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !26
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4849, i64 8002, !dbg !26
  store <4 x i32> %11, <4 x i32>* %scevgep50, align 16, !dbg !26
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !26
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 8003, !dbg !26
  store <4 x i32> %12, <4 x i32>* %scevgep47, align 16, !dbg !26
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !20
  %13 = icmp eq i64 %lsr.iv.next, 0, !dbg !20
  br i1 %13, label %for.cond.cleanup, label %vector.body, !dbg !20, !llvm.loop !27

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !30

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 2, 1, 5, 4, 8, 7, 0, 3, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
  uselistorder i32 0, { 2, 0, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s452.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!9 = distinct !DISubprogram(name: "s452", scope: !10, file: !10, line: 3, type: !11, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DIFile(filename: "TSVC_prior_work/s452.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !3)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !10, line: 8, type: !4)
!14 = distinct !DILexicalBlock(scope: !9, file: !10, line: 8, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 0, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !10, line: 8, column: 33)
!18 = distinct !DILexicalBlock(scope: !14, file: !10, line: 8, column: 3)
!19 = !DILocation(line: 8, column: 3, scope: !14)
!20 = !DILocation(line: 8, column: 29, scope: !18)
!21 = !DILocation(line: 9, column: 11, scope: !17)
!22 = !DILocation(line: 9, column: 18, scope: !17)
!23 = !DILocation(line: 9, column: 23, scope: !17)
!24 = !DILocation(line: 9, column: 16, scope: !17)
!25 = !DILocation(line: 10, column: 16, scope: !17)
!26 = !DILocation(line: 10, column: 9, scope: !17)
!27 = distinct !{!27, !19, !28, !29}
!28 = !DILocation(line: 11, column: 3, scope: !14)
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !DILocation(line: 12, column: 2, scope: !9)
