; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1161.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1161.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !20
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !22
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !27
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !29
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !41
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !46
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !48
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !50
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !52
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !54
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !57
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !59

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s1161() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !75
  br label %for.body, !dbg !76

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !77

for.body:                                         ; preds = %entry, %for.inc
  %lsr.iv = phi i64 [ 0, %entry ], [ %lsr.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression()), !dbg !75
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !78
  %uglygep4344 = bitcast i8* %uglygep43 to i32*
  %0 = load i32, i32* %uglygep4344, align 4, !dbg !78
  %cmp1 = icmp slt i32 %0, 0, !dbg !80
  br i1 %cmp1, label %L20, label %if.end, !dbg !81

if.end:                                           ; preds = %for.body
  %uglygep37 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !82
  %uglygep3738 = bitcast i8* %uglygep37 to i32*
  %1 = load i32, i32* %uglygep3738, align 4, !dbg !82
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !83
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %2 = load i32, i32* %uglygep3536, align 4, !dbg !83
  %mul = mul i32 %2, %1, !dbg !84
  br label %for.inc, !dbg !85

L20:                                              ; preds = %for.body
  call void @llvm.dbg.label(metadata !71), !dbg !86
  %uglygep41 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !87
  %uglygep4142 = bitcast i8* %uglygep41 to i32*
  %3 = load i32, i32* %uglygep4142, align 4, !dbg !87
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !88
  %uglygep3940 = bitcast i8* %uglygep39 to i32*
  %4 = load i32, i32* %uglygep3940, align 4, !dbg !88
  %mul16 = mul i32 %4, %4, !dbg !89
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %if.end, %L20
  %.sink = phi i32 [ %0, %if.end ], [ %3, %L20 ]
  %mul.sink = phi i32 [ %mul, %if.end ], [ %mul16, %L20 ]
  %a.sink = phi [32000 x i32]* [ @a, %if.end ], [ @b, %L20 ]
  %a.sink32 = bitcast [32000 x i32]* %a.sink to i8*
  %add = add i32 %mul.sink, %.sink, !dbg !91
  %uglygep = getelementptr i8, i8* %a.sink32, i64 %lsr.iv, !dbg !91
  %uglygep33 = bitcast i8* %uglygep to i32*
  store i32 %add, i32* %uglygep33, align 4, !dbg !91
  call void @llvm.dbg.label(metadata !74), !dbg !92
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !75
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4, !dbg !93
  %exitcond.not = icmp eq i64 %lsr.iv.next, 127996, !dbg !93
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !76, !llvm.loop !94

; uselistorder directives
  uselistorder i64 %lsr.iv, { 6, 5, 2, 1, 4, 3, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 5, 6, 2, 3, 4 }
  uselistorder i32 0, { 2, 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0, 2 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1161.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s1161", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s1161.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69, !71, !74}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 10, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 10, column: 3)
!71 = !DILabel(scope: !72, name: "L20", file: !66, line: 16)
!72 = distinct !DILexicalBlock(scope: !73, file: !66, line: 10, column: 35)
!73 = distinct !DILexicalBlock(scope: !70, file: !66, line: 10, column: 3)
!74 = !DILabel(scope: !72, name: "L10", file: !66, line: 18)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 10, column: 3, scope: !70)
!77 = !DILocation(line: 21, column: 2, scope: !65)
!78 = !DILocation(line: 11, column: 8, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !66, line: 11, column: 8)
!80 = !DILocation(line: 11, column: 13, scope: !79)
!81 = !DILocation(line: 11, column: 8, scope: !72)
!82 = !DILocation(line: 14, column: 18, scope: !72)
!83 = !DILocation(line: 14, column: 25, scope: !72)
!84 = !DILocation(line: 14, column: 23, scope: !72)
!85 = !DILocation(line: 15, column: 4, scope: !72)
!86 = !DILocation(line: 16, column: 1, scope: !72)
!87 = !DILocation(line: 17, column: 11, scope: !72)
!88 = !DILocation(line: 17, column: 18, scope: !72)
!89 = !DILocation(line: 17, column: 23, scope: !72)
!90 = !DILocation(line: 17, column: 4, scope: !72)
!91 = !DILocation(line: 0, scope: !72)
!92 = !DILocation(line: 18, column: 1, scope: !72)
!93 = !DILocation(line: 10, column: 21, scope: !73)
!94 = distinct !{!94, !76, !95}
!95 = !DILocation(line: 20, column: 3, scope: !70)
