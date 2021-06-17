; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s274.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s274.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
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
define dso_local i32 @s274() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %for.body, !dbg !72

for.cond.cleanup:                                 ; preds = %for.inc
  ret i32 0, !dbg !73

for.body:                                         ; preds = %entry, %for.inc
  %lsr.iv = phi i64 [ -128000, %entry ], [ %lsr.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression()), !dbg !71
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !74
  %uglygep4950 = bitcast i8* %uglygep49 to i32*
  %scevgep51 = getelementptr i32, i32* %uglygep4950, i64 32000, !dbg !74
  %0 = load i32, i32* %scevgep51, align 4, !dbg !74
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !77
  %uglygep4647 = bitcast i8* %uglygep46 to i32*
  %scevgep48 = getelementptr i32, i32* %uglygep4647, i64 32000, !dbg !77
  %1 = load i32, i32* %scevgep48, align 4, !dbg !77
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !78
  %uglygep4344 = bitcast i8* %uglygep43 to i32*
  %scevgep45 = getelementptr i32, i32* %uglygep4344, i64 32000, !dbg !78
  %2 = load i32, i32* %scevgep45, align 4, !dbg !78
  %mul = mul i32 %2, %1, !dbg !79
  %add = add i32 %mul, %0, !dbg !80
  %uglygep40 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep4041 = bitcast i8* %uglygep40 to i32*
  %scevgep42 = getelementptr i32, i32* %uglygep4041, i64 32000, !dbg !81
  store i32 %add, i32* %scevgep42, align 4, !dbg !81
  %cmp9 = icmp sgt i32 %add, 0, !dbg !82
  br i1 %cmp9, label %if.then, label %if.else, !dbg !84

if.then:                                          ; preds = %for.body
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !85
  %uglygep39 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep39, i64 32000, !dbg !85
  %3 = load i32, i32* %scevgep, align 4, !dbg !85
  %add14 = add i32 %3, %add, !dbg !87
  store i32 %add14, i32* %scevgep, align 4, !dbg !88
  br label %for.inc, !dbg !89

if.else:                                          ; preds = %for.body
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !90
  %sunkaddr52 = getelementptr i8, i8* %sunkaddr, i64 128000, !dbg !90
  %4 = bitcast i8* %sunkaddr52 to i32*, !dbg !90
  store i32 %mul, i32* %4, align 4, !dbg !90
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  call void @llvm.dbg.value(metadata i64 undef, metadata !69, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !71
  %lsr.iv.next = add nsw i64 %lsr.iv, 4, !dbg !92
  %exitcond.not = icmp eq i64 %lsr.iv.next, 0, !dbg !92
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !72, !llvm.loop !93

; uselistorder directives
  uselistorder i32* %scevgep, { 1, 0 }
  uselistorder i64 %lsr.iv, { 6, 0, 5, 4, 3, 2, 1 }
  uselistorder i64 32000, { 4, 3, 2, 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 5, 6, 3, 2, 4 }
  uselistorder i32 0, { 2, 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 1, 0, 2 }
  uselistorder label %for.inc, { 1, 0 }
  uselistorder label %for.body, { 1, 0 }
}

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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s274.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s274", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s274.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 9, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 17, column: 2, scope: !65)
!74 = !DILocation(line: 10, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !66, line: 9, column: 33)
!76 = distinct !DILexicalBlock(scope: !70, file: !66, line: 9, column: 3)
!77 = !DILocation(line: 10, column: 18, scope: !75)
!78 = !DILocation(line: 10, column: 25, scope: !75)
!79 = !DILocation(line: 10, column: 23, scope: !75)
!80 = !DILocation(line: 10, column: 16, scope: !75)
!81 = !DILocation(line: 10, column: 9, scope: !75)
!82 = !DILocation(line: 11, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !66, line: 11, column: 8)
!84 = !DILocation(line: 11, column: 8, scope: !75)
!85 = !DILocation(line: 12, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !66, line: 11, column: 25)
!87 = !DILocation(line: 12, column: 17, scope: !86)
!88 = !DILocation(line: 12, column: 10, scope: !86)
!89 = !DILocation(line: 13, column: 4, scope: !86)
!90 = !DILocation(line: 14, column: 10, scope: !91)
!91 = distinct !DILexicalBlock(scope: !83, file: !66, line: 13, column: 11)
!92 = !DILocation(line: 9, column: 21, scope: !76)
!93 = distinct !{!93, !72, !94}
!94 = !DILocation(line: 16, column: 3, scope: !70)
