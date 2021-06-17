; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1251.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1251.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1251() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !16
  br label %vector.body, !dbg !17

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %entry ], !dbg !18
  %uglygep34 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep3435 = bitcast i8* %uglygep34 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep3435, align 16, !dbg !20
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4142 = bitcast i8* %uglygep41 to <4 x i32>*
  %wide.load25 = load <4 x i32>, <4 x i32>* %uglygep4142, align 16, !dbg !22
  %0 = add <4 x i32> %wide.load25, %wide.load, !dbg !23
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load26 = load <4 x i32>, <4 x i32>* %uglygep4950, align 16, !dbg !24
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !25
  %uglygep5657 = bitcast i8* %uglygep56 to <4 x i32>*
  %wide.load27 = load <4 x i32>, <4 x i32>* %uglygep5657, align 16, !dbg !25
  %1 = add <4 x i32> %wide.load27, %wide.load26, !dbg !26
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !27
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  store <4 x i32> %1, <4 x i32>* %uglygep3637, align 16, !dbg !27
  %uglygep61 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !28
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %wide.load28 = load <4 x i32>, <4 x i32>* %uglygep6162, align 16, !dbg !28
  %2 = mul <4 x i32> %wide.load28, %0, !dbg !29
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !30
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  store <4 x i32> %2, <4 x i32>* %uglygep5152, align 16, !dbg !30
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep3132 = bitcast i8* %uglygep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 1, !dbg !20
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep33, align 16, !dbg !20
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  %scevgep40 = getelementptr <4 x i32>, <4 x i32>* %uglygep3839, i64 1, !dbg !22
  %wide.load25.1 = load <4 x i32>, <4 x i32>* %scevgep40, align 16, !dbg !22
  %3 = add <4 x i32> %wide.load25.1, %wide.load.1, !dbg !23
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 1, !dbg !24
  %wide.load26.1 = load <4 x i32>, <4 x i32>* %scevgep48, align 16, !dbg !24
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !25
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %scevgep55 = getelementptr <4 x i32>, <4 x i32>* %uglygep5354, i64 1, !dbg !25
  %wide.load27.1 = load <4 x i32>, <4 x i32>* %scevgep55, align 16, !dbg !25
  %4 = add <4 x i32> %wide.load27.1, %wide.load26.1, !dbg !26
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !27
  %uglygep30 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep30, i64 1, !dbg !27
  store <4 x i32> %4, <4 x i32>* %scevgep, align 16, !dbg !27
  %uglygep58 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !28
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 1, !dbg !28
  %wide.load28.1 = load <4 x i32>, <4 x i32>* %scevgep60, align 16, !dbg !28
  %5 = mul <4 x i32> %wide.load28.1, %3, !dbg !29
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !30
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 1, !dbg !30
  store <4 x i32> %5, <4 x i32>* %scevgep45, align 16, !dbg !30
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 32, !dbg !18
  %6 = icmp eq i64 %lsr.iv.next, 128000, !dbg !18
  br i1 %6, label %for.cond.cleanup, label %vector.body, !dbg !18, !llvm.loop !31

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !34

; uselistorder directives
  uselistorder i64 %lsr.iv, { 14, 7, 1, 13, 3, 6, 9, 12, 4, 0, 10, 2, 5, 8, 11 }
  uselistorder i64 1, { 3, 0, 6, 1, 2, 4, 5 }
  uselistorder i8* bitcast ([32000 x i32]* @e to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 3, 2, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 3, 2, 0, 1 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1251.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s1251", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s1251.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "s", scope: !7, file: !8, line: 9, type: !11)
!14 = !DILocalVariable(name: "i", scope: !15, file: !8, line: 10, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !8, line: 10, column: 3)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocation(line: 10, column: 3, scope: !15)
!18 = !DILocation(line: 10, column: 29, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !8, line: 10, column: 3)
!20 = !DILocation(line: 11, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !8, line: 10, column: 33)
!22 = !DILocation(line: 11, column: 13, scope: !21)
!23 = !DILocation(line: 11, column: 12, scope: !21)
!24 = !DILocation(line: 12, column: 11, scope: !21)
!25 = !DILocation(line: 12, column: 16, scope: !21)
!26 = !DILocation(line: 12, column: 15, scope: !21)
!27 = !DILocation(line: 12, column: 9, scope: !21)
!28 = !DILocation(line: 13, column: 13, scope: !21)
!29 = !DILocation(line: 13, column: 12, scope: !21)
!30 = !DILocation(line: 13, column: 9, scope: !21)
!31 = distinct !{!31, !17, !32, !33}
!32 = !DILocation(line: 14, column: 3, scope: !15)
!33 = !{!"llvm.loop.isvectorized", i32 1}
!34 = !DILocation(line: 15, column: 2, scope: !7)
