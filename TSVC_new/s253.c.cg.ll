; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s253.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s253.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s253() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !72
  br label %for.body, !dbg !73

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !74

for.body:                                         ; preds = %entry, %for.inc
  %lsr.iv = phi i64 [ -128000, %entry ], [ %lsr.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression()), !dbg !72
  %uglygep35 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !75
  %uglygep3536 = bitcast i8* %uglygep35 to i32*
  %scevgep37 = getelementptr i32, i32* %uglygep3536, i64 32000, !dbg !75
  %0 = load i32, i32* %scevgep37, align 4, !dbg !75
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !79
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 32000, !dbg !79
  %1 = load i32, i32* %scevgep34, align 4, !dbg !79
  %cmp3 = icmp sgt i32 %0, %1, !dbg !80
  br i1 %cmp3, label %if.then, label %for.inc, !dbg !81

if.then:                                          ; preds = %for.body
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !82
  %uglygep2930 = bitcast i8* %uglygep29 to i32*
  %scevgep31 = getelementptr i32, i32* %uglygep2930, i64 32000, !dbg !82
  %2 = load i32, i32* %scevgep31, align 4, !dbg !82
  %mul = mul i32 %2, %1, !dbg !84
  %sub = sub i32 %0, %mul, !dbg !85
  call void @llvm.dbg.value(metadata i32 %sub, metadata !69, metadata !DIExpression()), !dbg !86
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %uglygep28 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep28, i64 32000, !dbg !87
  %3 = load i32, i32* %scevgep, align 4, !dbg !87
  %add = add i32 %sub, %3, !dbg !87
  store i32 %add, i32* %scevgep, align 4, !dbg !87
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !88
  %sunkaddr38 = getelementptr i8, i8* %sunkaddr, i64 128000, !dbg !88
  %4 = bitcast i8* %sunkaddr38 to i32*, !dbg !88
  store i32 %sub, i32* %4, align 4, !dbg !88
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i64 undef, metadata !70, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !72
  %lsr.iv.next = add nsw i64 %lsr.iv, 4, !dbg !90
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0, !dbg !90
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !73, !llvm.loop !91

; uselistorder directives
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i32 %sub, { 1, 0 }
  uselistorder i64 %lsr.iv, { 5, 0, 4, 3, 2, 1 }
  uselistorder i64 32000, { 3, 2, 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 7, 8, 9, 10, 11, 12, 4, 3, 5, 6 }
  uselistorder i32 0, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 3, 0, 2 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s253.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !21, !26, !28, !30, !32, !34, !36, !38, !40, !45, !47, !49, !51, !53, !56, !58}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "X", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "TSVC_new/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "Y", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "Z", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "U", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "V", scope: !2, file: !8, line: 22, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "array", scope: !2, file: !8, line: 24, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 65536)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !9, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "temp", scope: !2, file: !8, line: 27, type: !10, isLocal: false, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 29, type: !9, isLocal: false, isDefinition: true, align: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !43)
!43 = !{!44, !44}
!44 = !DISubrange(count: 256)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !8, line: 30, type: !42, isLocal: false, isDefinition: true, align: 128)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !8, line: 33, type: !9, isLocal: false, isDefinition: true, align: 128)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !8, line: 36, type: !55, isLocal: false, isDefinition: true)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !8, line: 37, type: !55, isLocal: false, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "arr", scope: !2, file: !8, line: 38, type: !9, isLocal: false, isDefinition: true)
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!64 = distinct !DISubprogram(name: "s253", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s253.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "s", scope: !64, file: !65, line: 9, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 10, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 10, column: 3)
!72 = !DILocation(line: 0, scope: !71)
!73 = !DILocation(line: 10, column: 3, scope: !71)
!74 = !DILocation(line: 17, column: 2, scope: !64)
!75 = !DILocation(line: 11, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !65, line: 11, column: 8)
!77 = distinct !DILexicalBlock(scope: !78, file: !65, line: 10, column: 33)
!78 = distinct !DILexicalBlock(scope: !71, file: !65, line: 10, column: 3)
!79 = !DILocation(line: 11, column: 15, scope: !76)
!80 = !DILocation(line: 11, column: 13, scope: !76)
!81 = !DILocation(line: 11, column: 8, scope: !77)
!82 = !DILocation(line: 12, column: 23, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !65, line: 11, column: 21)
!84 = !DILocation(line: 12, column: 21, scope: !83)
!85 = !DILocation(line: 12, column: 14, scope: !83)
!86 = !DILocation(line: 0, scope: !64)
!87 = !DILocation(line: 13, column: 10, scope: !83)
!88 = !DILocation(line: 14, column: 10, scope: !83)
!89 = !DILocation(line: 15, column: 4, scope: !83)
!90 = !DILocation(line: 10, column: 21, scope: !78)
!91 = distinct !{!91, !73, !92}
!92 = !DILocation(line: 16, column: 3, scope: !71)
