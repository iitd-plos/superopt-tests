; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtv.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @vtv() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  br label %vector.body, !dbg !16

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !17
  %uglygep16 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep1617 = bitcast i8* %uglygep16 to <4 x i32>*
  %scevgep18 = getelementptr <4 x i32>, <4 x i32>* %uglygep1617, i64 8000, !dbg !19
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep18, align 16, !dbg !19
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1617, i64 8001, !dbg !19
  %wide.load8 = load <4 x i32>, <4 x i32>* %scevgep19, align 16, !dbg !19
  %uglygep30 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3031 = bitcast i8* %uglygep30 to <4 x i32>*
  %scevgep32 = getelementptr <4 x i32>, <4 x i32>* %uglygep3031, i64 8000, !dbg !21
  %wide.load9 = load <4 x i32>, <4 x i32>* %scevgep32, align 16, !dbg !21
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3031, i64 8001, !dbg !21
  %wide.load10 = load <4 x i32>, <4 x i32>* %scevgep37, align 16, !dbg !21
  %0 = mul <4 x i32> %wide.load9, %wide.load, !dbg !21
  %1 = mul <4 x i32> %wide.load10, %wide.load8, !dbg !21
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8000, !dbg !21
  store <4 x i32> %0, <4 x i32>* %scevgep35, align 16, !dbg !21
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 8001, !dbg !21
  store <4 x i32> %1, <4 x i32>* %scevgep36, align 16, !dbg !21
  %uglygep13 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep1314 = bitcast i8* %uglygep13 to <4 x i32>*
  %scevgep15 = getelementptr <4 x i32>, <4 x i32>* %uglygep1314, i64 8002, !dbg !19
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep15, align 16, !dbg !19
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !19
  %uglygep12 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep12, i64 8003, !dbg !19
  %wide.load8.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !19
  %uglygep27 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2728 = bitcast i8* %uglygep27 to <4 x i32>*
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2728, i64 8002, !dbg !21
  %wide.load9.1 = load <4 x i32>, <4 x i32>* %scevgep29, align 16, !dbg !21
  %uglygep24 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2425 = bitcast i8* %uglygep24 to <4 x i32>*
  %scevgep26 = getelementptr <4 x i32>, <4 x i32>* %uglygep2425, i64 8003, !dbg !21
  %wide.load10.1 = load <4 x i32>, <4 x i32>* %scevgep26, align 16, !dbg !21
  %2 = mul <4 x i32> %wide.load9.1, %wide.load.1, !dbg !21
  %3 = mul <4 x i32> %wide.load10.1, %wide.load8.1, !dbg !21
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 8002, !dbg !21
  store <4 x i32> %2, <4 x i32>* %scevgep22, align 16, !dbg !21
  %scevgep23 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 8003, !dbg !21
  store <4 x i32> %3, <4 x i32>* %scevgep23, align 16, !dbg !21
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !17
  %4 = icmp eq i64 %lsr.iv.next, 0, !dbg !17
  br i1 %4, label %for.cond.cleanup, label %vector.body, !dbg !17, !llvm.loop !22

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !25

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 8003, { 1, 0, 2 }
  uselistorder i64 8002, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i64 8001, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 2, 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/vtv.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "vtv", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/vtv.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 9, column: 3, scope: !14)
!17 = !DILocation(line: 9, column: 29, scope: !18)
!18 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!19 = !DILocation(line: 10, column: 12, scope: !20)
!20 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 33)
!21 = !DILocation(line: 10, column: 9, scope: !20)
!22 = distinct !{!22, !16, !23, !24}
!23 = !DILocation(line: 11, column: 3, scope: !14)
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !DILocation(line: 12, column: 2, scope: !7)
