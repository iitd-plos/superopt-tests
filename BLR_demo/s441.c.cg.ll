; ModuleID = '/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s441.c'
source_filename = "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s441.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s441() local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !26, metadata !DIExpression()), !dbg !28
  br label %for.body, !dbg !29

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !30

for.body:                                         ; preds = %entry, %for.inc
  %lsr.iv = phi i64 [ -128000, %entry ], [ %lsr.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !26, metadata !DIExpression()), !dbg !28
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !31
  %uglygep5960 = bitcast i8* %uglygep59 to i32*
  %scevgep61 = getelementptr i32, i32* %uglygep5960, i64 32000, !dbg !31
  %0 = load i32, i32* %scevgep61, align 4, !dbg !31
  %cmp1 = icmp slt i32 %0, 0, !dbg !35
  br i1 %cmp1, label %if.then, label %if.else, !dbg !36

if.then:                                          ; preds = %for.body
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !37
  %uglygep5657 = bitcast i8* %uglygep56 to i32*
  %scevgep58 = getelementptr i32, i32* %uglygep5657, i64 32000, !dbg !37
  %1 = load i32, i32* %scevgep58, align 4, !dbg !37
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !39
  %uglygep5051 = bitcast i8* %uglygep50 to i32*
  %scevgep52 = getelementptr i32, i32* %uglygep5051, i64 32000, !dbg !39
  %2 = load i32, i32* %scevgep52, align 4, !dbg !39
  %mul = mul i32 %2, %1, !dbg !40
  br label %for.inc, !dbg !41

if.else:                                          ; preds = %for.body
  %cmp10 = icmp eq i32 %0, 0, !dbg !42
  br i1 %cmp10, label %if.then11, label %if.else20, !dbg !44

if.then11:                                        ; preds = %if.else
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !45
  %uglygep5354 = bitcast i8* %uglygep53 to i32*
  %scevgep55 = getelementptr i32, i32* %uglygep5354, i64 32000, !dbg !45
  %3 = load i32, i32* %scevgep55, align 4, !dbg !45
  %mul16 = mul i32 %3, %3, !dbg !47
  br label %for.inc, !dbg !48

if.else20:                                        ; preds = %if.else
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !49
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i64 32000, !dbg !49
  %4 = load i32, i32* %scevgep49, align 4, !dbg !49
  %mul25 = mul i32 %4, %4, !dbg !51
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else20, %if.then11
  %mul.sink = phi i32 [ %mul, %if.then ], [ %mul25, %if.else20 ], [ %mul16, %if.then11 ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !52
  %uglygep46 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep46, i64 32000, !dbg !52
  %5 = load i32, i32* %scevgep, align 4, !dbg !52
  %add = add i32 %5, %mul.sink, !dbg !52
  store i32 %add, i32* %scevgep, align 4, !dbg !52
  call void @llvm.dbg.value(metadata i64 undef, metadata !26, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !28
  %lsr.iv.next = add nsw i64 %lsr.iv, 4, !dbg !53
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0, !dbg !53
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !29, !llvm.loop !54

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 5, 4, 2, 3, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0 }
  uselistorder i64 32000, { 5, 4, 2, 3, 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 3, 1, 2, 0 }
  uselistorder i32 0, { 1, 2, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0, 2 }
  uselistorder label %for.inc, { 1, 2, 0 }
  uselistorder label %for.body, { 1, 0 }
}

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
!3 = !DIFile(filename: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/s441.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/build/BLR_demo")
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
!22 = distinct !DISubprogram(name: "s441", scope: !23, file: !23, line: 3, type: !24, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !25)
!23 = !DIFile(filename: "BLR_demo/s441.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!24 = !DISubroutineType(types: !5)
!25 = !{!26}
!26 = !DILocalVariable(name: "i", scope: !27, file: !23, line: 9, type: !6)
!27 = distinct !DILexicalBlock(scope: !22, file: !23, line: 9, column: 4)
!28 = !DILocation(line: 0, scope: !27)
!29 = !DILocation(line: 9, column: 4, scope: !27)
!30 = !DILocation(line: 18, column: 3, scope: !22)
!31 = !DILocation(line: 10, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !23, line: 10, column: 9)
!33 = distinct !DILexicalBlock(scope: !34, file: !23, line: 9, column: 34)
!34 = distinct !DILexicalBlock(scope: !27, file: !23, line: 9, column: 4)
!35 = !DILocation(line: 10, column: 14, scope: !32)
!36 = !DILocation(line: 10, column: 9, scope: !33)
!37 = !DILocation(line: 11, column: 14, scope: !38)
!38 = distinct !DILexicalBlock(scope: !32, file: !23, line: 10, column: 26)
!39 = !DILocation(line: 11, column: 21, scope: !38)
!40 = !DILocation(line: 11, column: 19, scope: !38)
!41 = !DILocation(line: 12, column: 5, scope: !38)
!42 = !DILocation(line: 12, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !23, line: 12, column: 16)
!44 = !DILocation(line: 12, column: 16, scope: !32)
!45 = !DILocation(line: 13, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !23, line: 12, column: 34)
!47 = !DILocation(line: 13, column: 19, scope: !46)
!48 = !DILocation(line: 14, column: 5, scope: !46)
!49 = !DILocation(line: 15, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !43, file: !23, line: 14, column: 12)
!51 = !DILocation(line: 15, column: 19, scope: !50)
!52 = !DILocation(line: 0, scope: !32)
!53 = !DILocation(line: 9, column: 22, scope: !34)
!54 = distinct !{!54, !29, !55}
!55 = !DILocation(line: 17, column: 4, scope: !27)
