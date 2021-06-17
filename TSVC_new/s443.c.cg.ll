; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s443.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s443.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !41
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !46
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !48
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !50
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !52
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !54
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !57
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !59

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s443() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !76
  br label %for.body, !dbg !77

for.cond.cleanup:                                 ; preds = %for.inc.1
  ret i32 0, !dbg !78

for.body:                                         ; preds = %for.inc.1, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.inc.1 ], [ -128000, %entry ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression()), !dbg !76
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !79
  %uglygep2930 = bitcast i8* %uglygep29 to i32*
  %scevgep31 = getelementptr i32, i32* %uglygep2930, i64 32000, !dbg !79
  %0 = load i32, i32* %scevgep31, align 8, !dbg !79
  %cmp1 = icmp slt i32 %0, 1, !dbg !81
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %scevgep37 = getelementptr i32, i32* %uglygep3536, i64 32000, !dbg !82
  %1 = load i32, i32* %scevgep37, align 8, !dbg !82
  br i1 %cmp1, label %L20, label %for.inc, !dbg !83

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !71), !dbg !84
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !85
  %uglygep4142 = bitcast i8* %uglygep41 to i32*
  %scevgep43 = getelementptr i32, i32* %uglygep4142, i64 32000, !dbg !85
  %2 = load i32, i32* %scevgep43, align 8, !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body, %L20
  %.sink = phi i32 [ %2, %L20 ], [ %1, %for.body ]
  %mul = mul i32 %.sink, %1, !dbg !82
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !82
  %uglygep4748 = bitcast i8* %uglygep47 to i32*
  %scevgep49 = getelementptr i32, i32* %uglygep4748, i64 32000, !dbg !82
  %3 = load i32, i32* %scevgep49, align 8, !dbg !82
  %add = add i32 %3, %mul, !dbg !82
  store i32 %add, i32* %scevgep49, align 8, !dbg !82
  call void @llvm.dbg.label(metadata !75), !dbg !87
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression(DW_OP_constu, 1, DW_OP_or, DW_OP_stack_value)), !dbg !76
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !79
  %uglygep28 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep28, i64 32001, !dbg !79
  %4 = load i32, i32* %scevgep, align 4, !dbg !79
  %cmp1.1 = icmp slt i32 %4, 1, !dbg !81
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !82
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 32001, !dbg !82
  %5 = load i32, i32* %scevgep34, align 4, !dbg !82
  br i1 %cmp1.1, label %L20.1, label %for.inc.1, !dbg !83

L20.1:                                            ; preds = %for.inc
  call void @llvm.dbg.label(metadata !71), !dbg !84
  %uglygep38 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !85
  %uglygep3839 = bitcast i8* %uglygep38 to i32*
  %scevgep40 = getelementptr i32, i32* %uglygep3839, i64 32001, !dbg !85
  %6 = load i32, i32* %scevgep40, align 4, !dbg !85
  br label %for.inc.1, !dbg !86

for.inc.1:                                        ; preds = %L20.1, %for.inc
  %.sink.1 = phi i32 [ %6, %L20.1 ], [ %5, %for.inc ]
  %mul.1 = mul i32 %.sink.1, %5, !dbg !82
  %uglygep44 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !82
  %uglygep4445 = bitcast i8* %uglygep44 to i32*
  %scevgep46 = getelementptr i32, i32* %uglygep4445, i64 32001, !dbg !82
  %7 = load i32, i32* %scevgep46, align 4, !dbg !82
  %add.1 = add i32 %7, %mul.1, !dbg !82
  store i32 %add.1, i32* %scevgep46, align 4, !dbg !82
  call void @llvm.dbg.label(metadata !75), !dbg !87
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !76
  %lsr.iv.next = add nsw i64 %lsr.iv, 8, !dbg !88
  %exitcond.not.1 = icmp eq i64 %lsr.iv.next, 0, !dbg !88
  br i1 %exitcond.not.1, label %for.cond.cleanup, label %for.body, !dbg !77, !llvm.loop !89

; uselistorder directives
  uselistorder i32* %scevgep46, { 1, 0 }
  uselistorder i32 %1, { 1, 0 }
  uselistorder i64 %lsr.iv, { 8, 1, 3, 5, 7, 0, 2, 4, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 7, 8, 9, 10, 11, 12, 6, 4, 5, 3 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 1, 0 }
  uselistorder i32 0, { 1, 0 }
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
!llvm.module.flags = !{!61, !62, !63}
!llvm.ident = !{!64}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !10, line: 21, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s443.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!0, !8, !14, !16, !18, !20, !22, !27, !29, !31, !33, !35, !37, !39, !41, !46, !48, !50, !52, !54, !57, !59}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "TSVC_new/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !10, line: 22, type: !11, isLocal: false, isDefinition: true, align: 128)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !10, line: 24, type: !24, isLocal: false, isDefinition: true, align: 128)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 65536)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !10, line: 26, type: !11, isLocal: false, isDefinition: true, align: 128)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !10, line: 27, type: !6, isLocal: false, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !10, line: 29, type: !11, isLocal: false, isDefinition: true, align: 128)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2097152, elements: !44)
!44 = !{!45, !45}
!45 = !DISubrange(count: 256)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !10, line: 30, type: !43, isLocal: false, isDefinition: true, align: 128)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !10, line: 33, type: !11, isLocal: false, isDefinition: true, align: 128)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !10, line: 36, type: !56, isLocal: false, isDefinition: true)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !10, line: 37, type: !56, isLocal: false, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !10, line: 38, type: !11, isLocal: false, isDefinition: true)
!61 = !{i32 7, !"Dwarf Version", i32 4}
!62 = !{i32 2, !"Debug Info Version", i32 3}
!63 = !{i32 1, !"wchar_size", i32 4}
!64 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!65 = distinct !DISubprogram(name: "s443", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s443.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !71, !74, !75}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 9, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 9, column: 4)
!71 = !DILabel(scope: !72, name: "L20", file: !66, line: 15)
!72 = distinct !DILexicalBlock(scope: !73, file: !66, line: 9, column: 34)
!73 = distinct !DILexicalBlock(scope: !70, file: !66, line: 9, column: 4)
!74 = !DILabel(scope: !72, name: "L30", file: !66, line: 18)
!75 = !DILabel(scope: !72, name: "L50", file: !66, line: 20)
!76 = !DILocation(line: 0, scope: !70)
!77 = !DILocation(line: 9, column: 4, scope: !70)
!78 = !DILocation(line: 23, column: 3, scope: !65)
!79 = !DILocation(line: 10, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !72, file: !66, line: 10, column: 9)
!81 = !DILocation(line: 10, column: 14, scope: !80)
!82 = !DILocation(line: 0, scope: !72)
!83 = !DILocation(line: 10, column: 9, scope: !72)
!84 = !DILocation(line: 15, column: 2, scope: !72)
!85 = !DILocation(line: 16, column: 20, scope: !72)
!86 = !DILocation(line: 17, column: 5, scope: !72)
!87 = !DILocation(line: 20, column: 2, scope: !72)
!88 = !DILocation(line: 9, column: 22, scope: !73)
!89 = distinct !{!89, !77, !90}
!90 = !DILocation(line: 22, column: 4, scope: !70)
