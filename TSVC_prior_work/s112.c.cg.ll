; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s112.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s112.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = external dso_local local_unnamed_addr global [32000 x i32], align 16
@b = external dso_local local_unnamed_addr global [32000 x i32], align 16

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s112() local_unnamed_addr #0 !dbg !7 {
entry:
  call void @llvm.dbg.value(metadata i32 31998, metadata !13, metadata !DIExpression()), !dbg !15
  br label %for.body, !dbg !16

for.cond.cleanup:                                 ; preds = %for.body
  ret i32 0, !dbg !17

for.body:                                         ; preds = %for.body.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.body.1 ], [ 127996, %entry ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !13, metadata !DIExpression()), !dbg !15
  %uglygep18 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !18
  %uglygep1819 = bitcast i8* %uglygep18 to i32*
  %scevgep20 = getelementptr i32, i32* %uglygep1819, i64 -1, !dbg !18
  %0 = load i32, i32* %scevgep20, align 8, !dbg !18
  %uglygep24 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2425 = bitcast i8* %uglygep24 to i32*
  %scevgep26 = getelementptr i32, i32* %uglygep2425, i64 -1, !dbg !21
  %1 = load i32, i32* %scevgep26, align 8, !dbg !21
  %add = add i32 %1, %0, !dbg !22
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep15 = bitcast i8* %uglygep to i32*
  store i32 %add, i32* %uglygep15, align 4, !dbg !23
  call void @llvm.dbg.value(metadata i64 undef, metadata !13, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !15
  %cmp.not = icmp eq i64 %lsr.iv, 4, !dbg !24
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body.1, !dbg !16, !llvm.loop !25

for.body.1:                                       ; preds = %for.body
  call void @llvm.dbg.value(metadata i64 undef, metadata !13, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !15
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !18
  %uglygep2122 = bitcast i8* %uglygep21 to i32*
  %scevgep23 = getelementptr i32, i32* %uglygep2122, i64 -2, !dbg !18
  %2 = load i32, i32* %scevgep23, align 4, !dbg !18
  %uglygep27 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !21
  %uglygep2728 = bitcast i8* %uglygep27 to i32*
  %scevgep29 = getelementptr i32, i32* %uglygep2728, i64 -2, !dbg !21
  %3 = load i32, i32* %scevgep29, align 4, !dbg !21
  %add.1 = add i32 %3, %2, !dbg !22
  %uglygep16 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !23
  %uglygep1617 = bitcast i8* %uglygep16 to i32*
  %scevgep = getelementptr i32, i32* %uglygep1617, i64 -1, !dbg !23
  store i32 %add.1, i32* %scevgep, align 8, !dbg !23
  call void @llvm.dbg.value(metadata i64 undef, metadata !13, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !15
  %lsr.iv.next = add nsw i64 %lsr.iv, -8
  br label %for.body

; uselistorder directives
  uselistorder i64 %lsr.iv, { 7, 5, 0, 3, 2, 6, 1, 4 }
  uselistorder i64 -1, { 2, 0, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 0, 3, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 1, 3, 2, 4 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_prior_work/s112.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_prior_work")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!7 = distinct !DISubprogram(name: "s112", scope: !8, file: !8, line: 3, type: !9, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DIFile(filename: "TSVC_prior_work/s112.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DISubroutineType(types: !10)
!10 = !{!11}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "i", scope: !14, file: !8, line: 9, type: !11)
!14 = distinct !DILexicalBlock(scope: !7, file: !8, line: 9, column: 3)
!15 = !DILocation(line: 0, scope: !14)
!16 = !DILocation(line: 9, column: 3, scope: !14)
!17 = !DILocation(line: 12, column: 2, scope: !7)
!18 = !DILocation(line: 10, column: 13, scope: !19)
!19 = distinct !DILexicalBlock(scope: !20, file: !8, line: 9, column: 38)
!20 = distinct !DILexicalBlock(scope: !14, file: !8, line: 9, column: 3)
!21 = !DILocation(line: 10, column: 20, scope: !19)
!22 = !DILocation(line: 10, column: 18, scope: !19)
!23 = !DILocation(line: 10, column: 11, scope: !19)
!24 = !DILocation(line: 9, column: 27, scope: !20)
!25 = distinct !{!25, !16, !26}
!26 = !DILocation(line: 11, column: 3, scope: !14)
