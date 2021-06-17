; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2712.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2712.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
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
define dso_local i32 @s2712() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %vector.body, !dbg !72

vector.body:                                      ; preds = %pred.store.continue26, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %pred.store.continue26 ], [ -128000, %entry ], !dbg !73
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !75
  %uglygep3637 = bitcast i8* %uglygep36 to <4 x i32>*
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3637, i64 8000, !dbg !75
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !75
  %uglygep42 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !78
  %uglygep4243 = bitcast i8* %uglygep42 to <4 x i32>*
  %scevgep44 = getelementptr <4 x i32>, <4 x i32>* %uglygep4243, i64 8000, !dbg !78
  %wide.load19 = load <4 x i32>, <4 x i32>* %scevgep44, align 16, !dbg !78
  %0 = icmp sgt <4 x i32> %wide.load, %wide.load19, !dbg !79
  %uglygep45 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !80
  %uglygep4546 = bitcast i8* %uglygep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %uglygep4546, i64 8000, !dbg !80
  %wide.load20 = load <4 x i32>, <4 x i32>* %scevgep47, align 16, !dbg !80
  %1 = mul <4 x i32> %wide.load20, %wide.load19, !dbg !82
  %2 = add <4 x i32> %1, %wide.load, !dbg !83
  %3 = extractelement <4 x i1> %0, i32 0, !dbg !83
  br i1 %3, label %pred.store.if, label %pred.store.continue, !dbg !73

pred.store.if:                                    ; preds = %vector.body
  %4 = extractelement <4 x i32> %2, i32 0, !dbg !83
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !83
  %sunkaddr48 = getelementptr i8, i8* %sunkaddr, i64 128000, !dbg !83
  %5 = bitcast i8* %sunkaddr48 to i32*, !dbg !83
  store i32 %4, i32* %5, align 16, !dbg !83
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %6 = icmp sgt <4 x i32> %wide.load, %wide.load19, !dbg !79
  %7 = extractelement <4 x i1> %6, i32 1, !dbg !83
  br i1 %7, label %pred.store.if21, label %pred.store.continue22, !dbg !83

pred.store.if21:                                  ; preds = %pred.store.continue
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !83
  %uglygep28 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep28, i64 32001, !dbg !83
  %8 = extractelement <4 x i32> %2, i32 1, !dbg !83
  store i32 %8, i32* %scevgep, align 4, !dbg !83
  br label %pred.store.continue22

pred.store.continue22:                            ; preds = %pred.store.if21, %pred.store.continue
  %9 = icmp sgt <4 x i32> %wide.load, %wide.load19, !dbg !79
  %10 = extractelement <4 x i1> %9, i32 2, !dbg !83
  br i1 %10, label %pred.store.if23, label %pred.store.continue24, !dbg !83

pred.store.if23:                                  ; preds = %pred.store.continue22
  %uglygep29 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !83
  %uglygep2930 = bitcast i8* %uglygep29 to i32*
  %scevgep31 = getelementptr i32, i32* %uglygep2930, i64 32002, !dbg !83
  %11 = extractelement <4 x i32> %2, i32 2, !dbg !83
  store i32 %11, i32* %scevgep31, align 8, !dbg !83
  br label %pred.store.continue24

pred.store.continue24:                            ; preds = %pred.store.if23, %pred.store.continue22
  %12 = icmp sgt <4 x i32> %wide.load, %wide.load19, !dbg !79
  %13 = extractelement <4 x i1> %12, i32 3, !dbg !83
  br i1 %13, label %pred.store.if25, label %pred.store.continue26, !dbg !83

pred.store.if25:                                  ; preds = %pred.store.continue24
  %uglygep32 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !83
  %uglygep3233 = bitcast i8* %uglygep32 to i32*
  %scevgep34 = getelementptr i32, i32* %uglygep3233, i64 32003, !dbg !83
  %14 = extractelement <4 x i32> %2, i32 3, !dbg !83
  store i32 %14, i32* %scevgep34, align 4, !dbg !83
  br label %pred.store.continue26

pred.store.continue26:                            ; preds = %pred.store.if25, %pred.store.continue24
  %lsr.iv.next = add nsw i64 %lsr.iv, 16, !dbg !73
  %15 = icmp eq i64 %lsr.iv.next, 0, !dbg !73
  br i1 %15, label %for.cond.cleanup, label %vector.body, !dbg !73, !llvm.loop !84

for.cond.cleanup:                                 ; preds = %pred.store.continue26
  ret i32 0, !dbg !87

; uselistorder directives
  uselistorder <4 x i32> %wide.load19, { 2, 1, 0, 3, 4 }
  uselistorder <4 x i32> %wide.load, { 2, 1, 0, 3, 4 }
  uselistorder i64 %lsr.iv, { 7, 4, 5, 6, 0, 1, 2, 3 }
  uselistorder i32 0, { 3, 0, 1, 2 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 2, 3, 7, 8, 9, 10, 11, 12, 4, 5, 6 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 3, 4, 0, 1 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s2712.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s2712", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s2712.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !65, line: 9, type: !10)
!70 = distinct !DILexicalBlock(scope: !64, file: !65, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 9, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !65, line: 9, column: 3)
!75 = !DILocation(line: 10, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !65, line: 10, column: 8)
!77 = distinct !DILexicalBlock(scope: !74, file: !65, line: 9, column: 33)
!78 = !DILocation(line: 10, column: 15, scope: !76)
!79 = !DILocation(line: 10, column: 13, scope: !76)
!80 = !DILocation(line: 11, column: 20, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !65, line: 10, column: 21)
!82 = !DILocation(line: 11, column: 18, scope: !81)
!83 = !DILocation(line: 11, column: 10, scope: !81)
!84 = distinct !{!84, !72, !85, !86}
!85 = !DILocation(line: 13, column: 3, scope: !70)
!86 = !{!"llvm.loop.isvectorized", i32 1}
!87 = !DILocation(line: 14, column: 2, scope: !64)
