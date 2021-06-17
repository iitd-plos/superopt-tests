; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1279.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1279.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !31
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !33
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !37
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !39
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !35
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
define dso_local i32 @s1279() local_unnamed_addr #0 !dbg !65 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !71
  br label %vector.body, !dbg !72

vector.body:                                      ; preds = %pred.store.continue33, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %pred.store.continue33 ], [ 0, %entry ], !dbg !73
  %uglygep47 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !75
  %uglygep4748 = bitcast i8* %uglygep47 to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep4748, align 16, !dbg !75
  %0 = icmp slt <4 x i32> %wide.load, zeroinitializer, !dbg !78
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !79
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load24 = load <4 x i32>, <4 x i32>* %uglygep4950, align 16, !dbg !79
  %1 = icmp sgt <4 x i32> %wide.load24, %wide.load, !dbg !82
  %uglygep51 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !83
  %uglygep5152 = bitcast i8* %uglygep51 to <4 x i32>*
  %wide.load25 = load <4 x i32>, <4 x i32>* %uglygep5152, align 16, !dbg !83
  %uglygep53 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !85
  %uglygep5354 = bitcast i8* %uglygep53 to <4 x i32>*
  %wide.load26 = load <4 x i32>, <4 x i32>* %uglygep5354, align 16, !dbg !85
  %2 = mul <4 x i32> %wide.load26, %wide.load25, !dbg !86
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %wide.load27 = load <4 x i32>, <4 x i32>* %uglygep4344, align 16, !dbg !87
  %3 = add <4 x i32> %wide.load27, %2, !dbg !87
  %4 = and <4 x i1> %1, %0, !dbg !87
  %5 = extractelement <4 x i1> %4, i32 0, !dbg !87
  br i1 %5, label %pred.store.if, label %pred.store.continue, !dbg !73

pred.store.if:                                    ; preds = %vector.body
  %6 = extractelement <4 x i32> %3, i32 0, !dbg !87
  %sunkaddr = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %7 = bitcast i8* %sunkaddr to i32*, !dbg !87
  store i32 %6, i32* %7, align 16, !dbg !87
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %8 = extractelement <4 x i1> %4, i32 1, !dbg !87
  br i1 %8, label %pred.store.if28, label %pred.store.continue29, !dbg !87

pred.store.if28:                                  ; preds = %pred.store.continue
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %uglygep35 = bitcast i8* %uglygep to i32*
  %scevgep = getelementptr i32, i32* %uglygep35, i64 1, !dbg !87
  %9 = extractelement <4 x i32> %3, i32 1, !dbg !87
  store i32 %9, i32* %scevgep, align 4, !dbg !87
  br label %pred.store.continue29

pred.store.continue29:                            ; preds = %pred.store.if28, %pred.store.continue
  %10 = extractelement <4 x i1> %4, i32 2, !dbg !87
  br i1 %10, label %pred.store.if30, label %pred.store.continue31, !dbg !87

pred.store.if30:                                  ; preds = %pred.store.continue29
  %uglygep36 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %uglygep3637 = bitcast i8* %uglygep36 to i32*
  %scevgep38 = getelementptr i32, i32* %uglygep3637, i64 2, !dbg !87
  %11 = extractelement <4 x i32> %3, i32 2, !dbg !87
  store i32 %11, i32* %scevgep38, align 8, !dbg !87
  br label %pred.store.continue31

pred.store.continue31:                            ; preds = %pred.store.if30, %pred.store.continue29
  %12 = extractelement <4 x i1> %4, i32 3, !dbg !87
  br i1 %12, label %pred.store.if32, label %pred.store.continue33, !dbg !87

pred.store.if32:                                  ; preds = %pred.store.continue31
  %uglygep39 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !87
  %uglygep3940 = bitcast i8* %uglygep39 to i32*
  %scevgep41 = getelementptr i32, i32* %uglygep3940, i64 3, !dbg !87
  %13 = extractelement <4 x i32> %3, i32 3, !dbg !87
  store i32 %13, i32* %scevgep41, align 4, !dbg !87
  br label %pred.store.continue33

pred.store.continue33:                            ; preds = %pred.store.if32, %pred.store.continue31
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 16, !dbg !73
  %14 = icmp eq i64 %lsr.iv.next, 128000, !dbg !73
  br i1 %14, label %for.cond.cleanup, label %vector.body, !dbg !73, !llvm.loop !88

for.cond.cleanup:                                 ; preds = %pred.store.continue33
  ret i32 0, !dbg !91

; uselistorder directives
  uselistorder i64 %lsr.iv, { 9, 6, 7, 8, 0, 5, 1, 2, 3, 4 }
  uselistorder i32 0, { 3, 0, 1, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @c to i8*), { 2, 3, 4, 0, 1 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 4, 2, 3, 5, 6 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s1279.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!65 = distinct !DISubprogram(name: "s1279", scope: !66, file: !66, line: 3, type: !67, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!66 = !DIFile(filename: "TSVC_new/s1279.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!67 = !DISubroutineType(types: !5)
!68 = !{!69}
!69 = !DILocalVariable(name: "i", scope: !70, file: !66, line: 9, type: !6)
!70 = distinct !DILexicalBlock(scope: !65, file: !66, line: 9, column: 3)
!71 = !DILocation(line: 0, scope: !70)
!72 = !DILocation(line: 9, column: 3, scope: !70)
!73 = !DILocation(line: 9, column: 29, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !66, line: 9, column: 3)
!75 = !DILocation(line: 10, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !66, line: 10, column: 8)
!77 = distinct !DILexicalBlock(scope: !74, file: !66, line: 9, column: 33)
!78 = !DILocation(line: 10, column: 13, scope: !76)
!79 = !DILocation(line: 11, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !66, line: 11, column: 9)
!81 = distinct !DILexicalBlock(scope: !76, file: !66, line: 10, column: 25)
!82 = !DILocation(line: 11, column: 14, scope: !80)
!83 = !DILocation(line: 12, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !66, line: 11, column: 22)
!85 = !DILocation(line: 12, column: 21, scope: !84)
!86 = !DILocation(line: 12, column: 19, scope: !84)
!87 = !DILocation(line: 12, column: 11, scope: !84)
!88 = distinct !{!88, !72, !89, !90}
!89 = !DILocation(line: 15, column: 3, scope: !70)
!90 = !{!"llvm.loop.isvectorized", i32 1}
!91 = !DILocation(line: 16, column: 2, scope: !65)
