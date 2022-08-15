; ModuleID = '/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s443.c'
source_filename = "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s443.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s443() local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !33
  br label %for.body, !dbg !34

for.cond.cleanup:                                 ; preds = %for.inc.1
  ret i32 0, !dbg !35

for.body:                                         ; preds = %for.inc.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.inc.1 ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !26, metadata !DIExpression()), !dbg !33
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !36
  %uglygep2930 = bitcast i8* %uglygep29 to i32*
  %scevgep31 = getelementptr i32, i32* %uglygep2930, i64 32000, !dbg !36
  %0 = load i32, i32* %scevgep31, align 8, !dbg !36
  %cmp1 = icmp slt i32 %0, 1, !dbg !38
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !39
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %scevgep37 = getelementptr i32, i32* %uglygep3536, i64 32000, !dbg !39
  %1 = load i32, i32* %scevgep37, align 8, !dbg !39
  br i1 %cmp1, label %L20, label %for.inc, !dbg !40

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !28), !dbg !41
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !42
  %uglygep4142 = bitcast i8* %uglygep41 to i32*
  %scevgep43 = getelementptr i32, i32* %uglygep4142, i64 32000, !dbg !42
  %2 = load i32, i32* %scevgep43, align 8, !dbg !42
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body, %L20
  %.sink = phi i32 [ %2, %L20 ], [ %1, %for.body ]
  %mul = mul i32 %.sink, %1, !dbg !39
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !39
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i64 32000, !dbg !39
  %3 = load i32, i32* %scevgep49, align 8, !dbg !39
  %add = add i32 %3, %mul, !dbg !39
  store i32 %add, i32* %scevgep49, align 8, !dbg !39
  call void @llvm.dbg.label(metadata !32), !dbg !44
  call void @llvm.dbg.value(metadata i64 undef, metadata !26, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !33
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !36
  %uglygep28 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep28, i64 32001, !dbg !36
  %4 = load i32, i32* %scevgep, align 4, !dbg !36
  %cmp1.1 = icmp slt i32 %4, 1, !dbg !38
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !39
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 32001, !dbg !39
  %5 = load i32, i32* %scevgep34, align 4, !dbg !39
  br i1 %cmp1.1, label %L20.1, label %for.inc.1, !dbg !40

L20.1:                                            ; preds = %for.inc
  call void @llvm.dbg.label(metadata !28), !dbg !41
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !42
  %uglygep3839 = bitcast i8* %uglygep38 to i32*
  %scevgep40 = getelementptr i32, i32* %uglygep3839, i64 32001, !dbg !42
  %6 = load i32, i32* %scevgep40, align 4, !dbg !42
  br label %for.inc.1, !dbg !43

for.inc.1:                                        ; preds = %L20.1, %for.inc
  %.sink.1 = phi i32 [ %6, %L20.1 ], [ %5, %for.inc ]
  %mul.1 = mul i32 %.sink.1, %5, !dbg !39
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !39
  %uglygep4445 = bitcast i8* %uglygep44 to i32*
  %scevgep46 = getelementptr i32, i32* %uglygep4445, i64 32001, !dbg !39
  %7 = load i32, i32* %scevgep46, align 4, !dbg !39
  %add.1 = add i32 %7, %mul.1, !dbg !39
  store i32 %add.1, i32* %scevgep46, align 4, !dbg !39
  call void @llvm.dbg.label(metadata !32), !dbg !44
  call void @llvm.dbg.value(metadata i64 undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !33
  %lsr.iv.next = add nsw i64 %lsr.iv, 8, !dbg !45
  %exitcond.not.1 = icmp eq i64 %lsr.iv.next, 0, !dbg !45
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !dbg !34, !llvm.loop !46

; uselistorder directives
  uselistorder i32* %scevgep46, { 1, 0 }
  uselistorder i32 %1, { 1, 0 }
  uselistorder i64 %lsr.iv, { 8, 1, 3, 5, 7, 0, 2, 4, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 3, 1, 2, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 0, 2, 1, 3 }
  uselistorder label %for.inc, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s443.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/build/BLR_demo")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "BLR_demo/globals2.h", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)"}
!22 = distinct !DISubprogram(name: "s443", scope: !23, file: !23, line: 3, type: !24, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DIFile(filename: "BLR_demo/s443.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!24 = !DISubroutineType(types: !5)
!25 = !{!26, !28, !31, !32}
!26 = !DILocalVariable(name: "i", scope: !27, file: !23, line: 9, type: !6)
!27 = distinct !DILexicalBlock(scope: !22, file: !23, line: 9, column: 4)
!28 = !DILabel(scope: !29, name: "L20", file: !23, line: 15)
!29 = distinct !DILexicalBlock(scope: !30, file: !23, line: 9, column: 34)
!30 = distinct !DILexicalBlock(scope: !27, file: !23, line: 9, column: 4)
!31 = !DILabel(scope: !29, name: "L30", file: !23, line: 18)
!32 = !DILabel(scope: !29, name: "L50", file: !23, line: 20)
!33 = !DILocation(line: 0, scope: !27)
!34 = !DILocation(line: 9, column: 4, scope: !27)
!35 = !DILocation(line: 23, column: 3, scope: !22)
!36 = !DILocation(line: 10, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !23, line: 10, column: 9)
!38 = !DILocation(line: 10, column: 14, scope: !37)
!39 = !DILocation(line: 0, scope: !29)
!40 = !DILocation(line: 10, column: 9, scope: !29)
!41 = !DILocation(line: 15, column: 2, scope: !29)
!42 = !DILocation(line: 16, column: 20, scope: !29)
!43 = !DILocation(line: 17, column: 5, scope: !29)
!44 = !DILocation(line: 20, column: 2, scope: !29)
!45 = !DILocation(line: 9, column: 22, scope: !30)
!46 = distinct !{!46, !34, !47}
!47 = !DILocation(line: 22, column: 4, scope: !27)
