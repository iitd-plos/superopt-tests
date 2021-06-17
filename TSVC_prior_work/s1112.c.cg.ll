; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1112.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@val = external dso_local local_unnamed_addr global i32, align 4
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1112() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 31999, metadata !13, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* @val, align 4, !dbg !16
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  %broadcast.splatinsert11 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat12 = shufflevector <4 x i32> %broadcast.splatinsert11, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  br label %vector.body, !dbg !19

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 128000, %entry ]
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 -1, !dbg !20
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep25, align 4, !dbg !20
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !20
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 -2, !dbg !20
  %wide.load9 = load <4 x i32>, <4 x i32>* %scevgep22, align 4, !dbg !20
  %reverse10 = shufflevector <4 x i32> %wide.load9, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !20
  %1 = add <4 x i32> %broadcast.splat, %reverse, !dbg !21
  %2 = add <4 x i32> %broadcast.splat12, %reverse10, !dbg !21
  %reverse13 = shufflevector <4 x i32> %1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !22
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3536 = bitcast i8* %uglygep35 to <4 x i32>*
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3536, i64 -1, !dbg !22
  store <4 x i32> %reverse13, <4 x i32>* %scevgep37, align 4, !dbg !22
  %reverse14 = shufflevector <4 x i32> %2, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !22
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3233 = bitcast i8* %uglygep32 to <4 x i32>*
  %scevgep34 = getelementptr <4 x i32>, <4 x i32>* %uglygep3233, i64 -2, !dbg !22
  store <4 x i32> %reverse14, <4 x i32>* %scevgep34, align 4, !dbg !22
  %uglygep17 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep1718 = bitcast i8* %uglygep17 to <4 x i32>*
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 -3, !dbg !20
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep19, align 4, !dbg !20
  %reverse.1 = shufflevector <4 x i32> %wide.load.1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !20
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep16 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep16, i64 -4, !dbg !20
  %wide.load9.1 = load <4 x i32>, <4 x i32>* %scevgep, align 4, !dbg !20
  %reverse10.1 = shufflevector <4 x i32> %wide.load9.1, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !20
  %3 = add <4 x i32> %broadcast.splat, %reverse.1, !dbg !21
  %4 = add <4 x i32> %broadcast.splat12, %reverse10.1, !dbg !21
  %reverse13.1 = shufflevector <4 x i32> %3, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !22
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !22
  %uglygep2930 = bitcast i8* %uglygep29 to <4 x i32>*
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2930, i64 -3, !dbg !22
  store <4 x i32> %reverse13.1, <4 x i32>* %scevgep31, align 4, !dbg !22
  %reverse14.1 = shufflevector <4 x i32> %4, <4 x i32> undef, <4 x i32> <i32 3, i32 2, i32 1, i32 0>, !dbg !22
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !22
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 -4, !dbg !22
  store <4 x i32> %reverse14.1, <4 x i32>* %scevgep28, align 4, !dbg !22
  %lsr.iv.next = add nsw i64 %lsr.iv, -64
  %5 = icmp eq i64 %lsr.iv.next, 0
  br i1 %5, label %for.cond.cleanup, label %vector.body, !llvm.loop !23

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !26

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 3, 2, 7, 6, 1, 0, 5, 4 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 3, 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 2, 1, 0 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder <4 x i32> undef, { 0, 1, 2, 3, 4, 5, 10, 11, 6, 7, 8, 9 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1112.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s1112", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s1112.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 0, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 38)
!18 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!19 = !DILocation(line: 9, column: 3, scope: !14)
!20 = !DILocation(line: 10, column: 11, scope: !17)
!21 = !DILocation(line: 10, column: 16, scope: !17)
!22 = !DILocation(line: 10, column: 9, scope: !17)
!23 = distinct !{!23, !19, !24, !25}
!24 = !DILocation(line: 11, column: 3, scope: !14)
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !DILocation(line: 12, column: 2, scope: !7)
