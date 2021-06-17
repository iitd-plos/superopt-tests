; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex107.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex107.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !20
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !25
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !27
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !29
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !31
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !33
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !38
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !40
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !42

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex107() local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !54
  br label %for.body, !dbg !55

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !56

for.body:                                         ; preds = %entry, %for.inc
  %lsr.iv = phi i64 [ -128000, %entry ], [ %lsr.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !52, metadata !DIExpression()), !dbg !54
  %uglygep59 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !57
  %uglygep5960 = bitcast i8* %uglygep59 to i32*
  %scevgep61 = getelementptr i32, i32* %uglygep5960, i64 32000, !dbg !57
  %0 = load i32, i32* %scevgep61, align 4, !dbg !57
  %cmp1 = icmp slt i32 %0, 0, !dbg !61
  br i1 %cmp1, label %if.then, label %if.else, !dbg !62

if.then:                                          ; preds = %for.body
  %uglygep56 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !63
  %uglygep5657 = bitcast i8* %uglygep56 to i32*
  %scevgep58 = getelementptr i32, i32* %uglygep5657, i64 32000, !dbg !63
  %1 = load i32, i32* %scevgep58, align 4, !dbg !63
  %uglygep50 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !65
  %uglygep5051 = bitcast i8* %uglygep50 to i32*
  %scevgep52 = getelementptr i32, i32* %uglygep5051, i64 32000, !dbg !65
  %2 = load i32, i32* %scevgep52, align 4, !dbg !65
  %mul = mul i32 %2, %1, !dbg !66
  br label %for.inc, !dbg !67

if.else:                                          ; preds = %for.body
  %cmp10 = icmp eq i32 %0, 0, !dbg !68
  br i1 %cmp10, label %if.then11, label %if.else20, !dbg !70

if.then11:                                        ; preds = %if.else
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !71
  %uglygep5354 = bitcast i8* %uglygep53 to i32*
  %scevgep55 = getelementptr i32, i32* %uglygep5354, i64 32000, !dbg !71
  %3 = load i32, i32* %scevgep55, align 4, !dbg !71
  %mul16 = mul i32 %3, %3, !dbg !73
  br label %for.inc, !dbg !74

if.else20:                                        ; preds = %if.else
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !75
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i64 32000, !dbg !75
  %4 = load i32, i32* %scevgep49, align 4, !dbg !75
  %mul25 = mul i32 %4, %4, !dbg !77
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else20, %if.then11
  %mul.sink = phi i32 [ %mul, %if.then ], [ %mul25, %if.else20 ], [ %mul16, %if.then11 ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !78
  %uglygep46 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep46, i64 32000, !dbg !78
  %5 = load i32, i32* %scevgep, align 4, !dbg !78
  %add = add i32 %5, %mul.sink, !dbg !78
  store i32 %add, i32* %scevgep, align 4, !dbg !78
  call void @llvm.dbg.value(metadata i64 undef, metadata !52, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !54
  %lsr.iv.next = add nsw i64 %lsr.iv, 4, !dbg !79
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0, !dbg !79
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !55, !llvm.loop !80

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 5, 4, 2, 3, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0 }
  uselistorder i64 32000, { 5, 4, 2, 3, 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 4, 2, 3, 1 }
  uselistorder i32 0, { 3, 4, 2, 0, 1 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0, 2 }
  uselistorder label %for.inc, { 1, 2, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex107.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !0, !18, !20, !25, !27, !29, !31, !33, !38, !40, !42}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "LORE_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 33554432, elements: !23)
!23 = !{!24, !24}
!24 = !DISubrange(count: 1024)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "aaa", scope: !2, file: !10, line: 25, type: !35, isLocal: false, isDefinition: true, align: 128)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 536870912, elements: !36)
!36 = !{!37, !37, !37}
!37 = !DISubrange(count: 256)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "bbb", scope: !2, file: !10, line: 25, type: !35, isLocal: false, isDefinition: true, align: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !10, line: 26, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !10, line: 26, type: !6, isLocal: false, isDefinition: true)
!44 = !{i32 7, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!48 = distinct !DISubprogram(name: "ex107", scope: !49, file: !49, line: 5, type: !50, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!49 = !DIFile(filename: "LORE_mem_write/ex107.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!50 = !DISubroutineType(types: !5)
!51 = !{!52}
!52 = !DILocalVariable(name: "i", scope: !53, file: !49, line: 8, type: !6)
!53 = distinct !DILexicalBlock(scope: !48, file: !49, line: 8, column: 3)
!54 = !DILocation(line: 0, scope: !53)
!55 = !DILocation(line: 8, column: 3, scope: !53)
!56 = !DILocation(line: 17, column: 2, scope: !48)
!57 = !DILocation(line: 9, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !49, line: 9, column: 8)
!59 = distinct !DILexicalBlock(scope: !60, file: !49, line: 8, column: 33)
!60 = distinct !DILexicalBlock(scope: !53, file: !49, line: 8, column: 3)
!61 = !DILocation(line: 9, column: 13, scope: !58)
!62 = !DILocation(line: 9, column: 8, scope: !59)
!63 = !DILocation(line: 10, column: 13, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !49, line: 9, column: 25)
!65 = !DILocation(line: 10, column: 20, scope: !64)
!66 = !DILocation(line: 10, column: 18, scope: !64)
!67 = !DILocation(line: 11, column: 4, scope: !64)
!68 = !DILocation(line: 11, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !58, file: !49, line: 11, column: 15)
!70 = !DILocation(line: 11, column: 15, scope: !58)
!71 = !DILocation(line: 12, column: 13, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !49, line: 11, column: 33)
!73 = !DILocation(line: 12, column: 18, scope: !72)
!74 = !DILocation(line: 13, column: 4, scope: !72)
!75 = !DILocation(line: 14, column: 13, scope: !76)
!76 = distinct !DILexicalBlock(scope: !69, file: !49, line: 13, column: 11)
!77 = !DILocation(line: 14, column: 18, scope: !76)
!78 = !DILocation(line: 0, scope: !58)
!79 = !DILocation(line: 8, column: 21, scope: !60)
!80 = distinct !{!80, !55, !81}
!81 = !DILocation(line: 16, column: 3, scope: !53)
