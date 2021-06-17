; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1281.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1281.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = external dso_local local_unnamed_addr global [32000 x i32], align 16
@c = external dso_local local_unnamed_addr global [32000 x i32], align 16
@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@d = external dso_local local_unnamed_addr global [32000 x i32], align 16
@e = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1281() local_unnamed_addr #0 !dbg !9 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !14, metadata !DIExpression()), !dbg !16
  br label %vector.body, !dbg !17

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %entry ], !dbg !18
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep3637, align 16, !dbg !20
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %wide.load27 = load <4 x i32>, <4 x i32>* %uglygep4344, align 16, !dbg !22
  %0 = mul <4 x i32> %wide.load27, %wide.load, !dbg !23
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %wide.load28 = load <4 x i32>, <4 x i32>* %uglygep5152, align 16, !dbg !24
  %uglygep58 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !25
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %wide.load29 = load <4 x i32>, <4 x i32>* %uglygep5859, align 16, !dbg !25
  %1 = mul <4 x i32> %wide.load29, %wide.load28, !dbg !26
  %2 = add <4 x i32> %1, %0, !dbg !27
  %uglygep63 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !28
  %uglygep6364 = bitcast i8* %uglygep63 to <4 x i32>*
  %wide.load30 = load <4 x i32>, <4 x i32>* %uglygep6364, align 16, !dbg !28
  %3 = add <4 x i32> %2, %wide.load30, !dbg !29
  %4 = add <4 x i32> %3, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !30
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !31
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  store <4 x i32> %4, <4 x i32>* %uglygep5354, align 16, !dbg !31
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !32
  %uglygep3839 = bitcast i8* %uglygep38 to <4 x i32>*
  store <4 x i32> %3, <4 x i32>* %uglygep3839, align 16, !dbg !32
  %uglygep33 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !20
  %uglygep3334 = bitcast i8* %uglygep33 to <4 x i32>*
  %scevgep35 = getelementptr <4 x i32>, <4 x i32>* %uglygep3334, i64 1, !dbg !20
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep35, align 16, !dbg !20
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !22
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 1, !dbg !22
  %wide.load27.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !22
  %5 = mul <4 x i32> %wide.load27.1, %wide.load.1, !dbg !23
  %uglygep48 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !24
  %uglygep4849 = bitcast i8* %uglygep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %uglygep4849, i64 1, !dbg !24
  %wide.load28.1 = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !24
  %uglygep55 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !25
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 1, !dbg !25
  %wide.load29.1 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !25
  %6 = mul <4 x i32> %wide.load29.1, %wide.load28.1, !dbg !26
  %7 = add <4 x i32> %6, %5, !dbg !27
  %uglygep60 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !28
  %uglygep6061 = bitcast i8* %uglygep60 to <4 x i32>*
  %scevgep62 = getelementptr <4 x i32>, <4 x i32>* %uglygep6061, i64 1, !dbg !28
  %wide.load30.1 = load <4 x i32>, <4 x i32>* %scevgep62, align 16, !dbg !28
  %8 = add <4 x i32> %7, %wide.load30.1, !dbg !29
  %9 = add <4 x i32> %8, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !30
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !31
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 1, !dbg !31
  store <4 x i32> %9, <4 x i32>* %scevgep47, align 16, !dbg !31
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !32
  %uglygep32 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep32, i64 1, !dbg !32
  store <4 x i32> %8, <4 x i32>* %scevgep, align 16, !dbg !32
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 32, !dbg !18
  %10 = icmp eq i64 %lsr.iv.next, 128000, !dbg !18
  br i1 %10, label %for.cond.cleanup, label %vector.body, !dbg !18, !llvm.loop !33

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !36

; uselistorder directives
  uselistorder i64 %lsr.iv, { 14, 13, 7, 1, 3, 6, 9, 12, 10, 4, 0, 2, 5, 8, 11 }
  uselistorder i64 1, { 6, 3, 0, 1, 2, 4, 5 }
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
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s1281.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!9 = distinct !DISubprogram(name: "s1281", scope: !10, file: !10, line: 3, type: !11, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!10 = !DIFile(filename: "TSVC_prior_work/s1281.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DISubroutineType(types: !3)
!12 = !{!13, !14}
!13 = !DILocalVariable(name: "x", scope: !9, file: !10, line: 10, type: !4)
!14 = !DILocalVariable(name: "i", scope: !15, file: !10, line: 11, type: !4)
!15 = distinct !DILexicalBlock(scope: !9, file: !10, line: 11, column: 3)
!16 = !DILocation(line: 0, scope: !15)
!17 = !DILocation(line: 11, column: 3, scope: !15)
!18 = !DILocation(line: 11, column: 29, scope: !19)
!19 = distinct !DILexicalBlock(scope: !15, file: !10, line: 11, column: 3)
!20 = !DILocation(line: 12, column: 8, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !10, line: 11, column: 33)
!22 = !DILocation(line: 12, column: 13, scope: !21)
!23 = !DILocation(line: 12, column: 12, scope: !21)
!24 = !DILocation(line: 12, column: 18, scope: !21)
!25 = !DILocation(line: 12, column: 23, scope: !21)
!26 = !DILocation(line: 12, column: 22, scope: !21)
!27 = !DILocation(line: 12, column: 17, scope: !21)
!28 = !DILocation(line: 12, column: 28, scope: !21)
!29 = !DILocation(line: 12, column: 27, scope: !21)
!30 = !DILocation(line: 13, column: 12, scope: !21)
!31 = !DILocation(line: 13, column: 9, scope: !21)
!32 = !DILocation(line: 14, column: 9, scope: !21)
!33 = distinct !{!33, !17, !34, !35}
!34 = !DILocation(line: 15, column: 3, scope: !15)
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !DILocation(line: 16, column: 2, scope: !9)
