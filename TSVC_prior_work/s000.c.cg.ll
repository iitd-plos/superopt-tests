; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s000.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s000.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = external dso_local local_unnamed_addr global [32000 x i32], align 16
@val = external dso_local local_unnamed_addr global i32, align 4
@X = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s000() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !13, metadata !DIExpression()), !dbg !15
  %0 = load i32, i32* @val, align 4, !dbg !16
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  %broadcast.splatinsert9 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !19
  %broadcast.splat10 = shufflevector <4 x i32> %broadcast.splatinsert9, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !19
  br label %vector.body, !dbg !19

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !20
  %uglygep16 = getelementptr i8, i8* bitcast ([32000 x i32]* @Y to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1617 = bitcast i8* %uglygep16 to <4 x i32>*
  %scevgep18 = getelementptr <4 x i32>, <4 x i32>* %uglygep1617, i64 8000, !dbg !21
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep18, align 16, !dbg !21
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1617, i64 8001, !dbg !21
  %wide.load8 = load <4 x i32>, <4 x i32>* %scevgep19, align 16, !dbg !21
  %1 = add <4 x i32> %broadcast.splat, %wide.load, !dbg !22
  %2 = add <4 x i32> %broadcast.splat10, %wide.load8, !dbg !22
  %uglygep26 = getelementptr i8, i8* bitcast ([32000 x i32]* @X to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2627 = bitcast i8* %uglygep26 to <4 x i32>*
  %scevgep28 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8000, !dbg !23
  store <4 x i32> %1, <4 x i32>* %scevgep28, align 16, !dbg !23
  %scevgep29 = getelementptr <4 x i32>, <4 x i32>* %uglygep2627, i64 8001, !dbg !23
  store <4 x i32> %2, <4 x i32>* %scevgep29, align 16, !dbg !23
  %uglygep13 = getelementptr i8, i8* bitcast ([32000 x i32]* @Y to i8*), i64 %lsr.iv, !dbg !21
  %uglygep1314 = bitcast i8* %uglygep13 to <4 x i32>*
  %scevgep15 = getelementptr <4 x i32>, <4 x i32>* %uglygep1314, i64 8002, !dbg !21
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep15, align 16, !dbg !21
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @Y to i8*), i64 %lsr.iv, !dbg !21
  %uglygep12 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep12, i64 8003, !dbg !21
  %wide.load8.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !21
  %3 = add <4 x i32> %broadcast.splat, %wide.load.1, !dbg !22
  %4 = add <4 x i32> %broadcast.splat10, %wide.load8.1, !dbg !22
  %uglygep23 = getelementptr i8, i8* bitcast ([32000 x i32]* @X to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2324 = bitcast i8* %uglygep23 to <4 x i32>*
  %scevgep25 = getelementptr <4 x i32>, <4 x i32>* %uglygep2324, i64 8002, !dbg !23
  store <4 x i32> %3, <4 x i32>* %scevgep25, align 16, !dbg !23
  %uglygep20 = getelementptr i8, i8* bitcast ([32000 x i32]* @X to i8*), i64 %lsr.iv, !dbg !23
  %uglygep2021 = bitcast i8* %uglygep20 to <4 x i32>*
  %scevgep22 = getelementptr <4 x i32>, <4 x i32>* %uglygep2021, i64 8003, !dbg !23
  store <4 x i32> %4, <4 x i32>* %scevgep22, align 16, !dbg !23
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !20
  %5 = icmp eq i64 %lsr.iv.next, 0, !dbg !20
  br i1 %5, label %for.cond.cleanup, label %vector.body, !dbg !20, !llvm.loop !24

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !27

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @X to i8*), { 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @Y to i8*), { 2, 1, 0 }
  uselistorder i32 0, { 2, 0, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s000.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s000", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s000.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 0, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !8, line: 9, column: 33)
!18 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!19 = !DILocation(line: 9, column: 3, scope: !14)
!20 = !DILocation(line: 9, column: 29, scope: !18)
!21 = !DILocation(line: 10, column: 11, scope: !17)
!22 = !DILocation(line: 10, column: 16, scope: !17)
!23 = !DILocation(line: 10, column: 9, scope: !17)
!24 = distinct !{!24, !19, !25, !26}
!25 = !DILocation(line: 11, column: 3, scope: !14)
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !DILocation(line: 12, column: 2, scope: !7)
