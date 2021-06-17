; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex101.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex101.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !19
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !24
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @ex101() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !56
  br label %vector.body, !dbg !57

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !58
  %uglygep17 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep1718 = bitcast i8* %uglygep17 to <4 x i32>*
  %scevgep19 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 8000, !dbg !60
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep19, align 16, !dbg !60
  %scevgep20 = getelementptr <4 x i32>, <4 x i32>* %uglygep1718, i64 8001, !dbg !60
  %wide.load9 = load <4 x i32>, <4 x i32>* %scevgep20, align 16, !dbg !60
  %uglygep31 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !61
  %uglygep3132 = bitcast i8* %uglygep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8000, !dbg !61
  %wide.load10 = load <4 x i32>, <4 x i32>* %scevgep33, align 16, !dbg !61
  %scevgep38 = getelementptr <4 x i32>, <4 x i32>* %uglygep3132, i64 8001, !dbg !61
  %wide.load11 = load <4 x i32>, <4 x i32>* %scevgep38, align 16, !dbg !61
  %0 = add <4 x i32> %wide.load10, %wide.load, !dbg !61
  %1 = add <4 x i32> %wide.load11, %wide.load9, !dbg !61
  %uglygep34 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !61
  %uglygep3435 = bitcast i8* %uglygep34 to <4 x i32>*
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %uglygep3435, i64 8000, !dbg !61
  store <4 x i32> %0, <4 x i32>* %scevgep36, align 16, !dbg !61
  %scevgep37 = getelementptr <4 x i32>, <4 x i32>* %uglygep3435, i64 8001, !dbg !61
  store <4 x i32> %1, <4 x i32>* %scevgep37, align 16, !dbg !61
  %uglygep14 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep1415 = bitcast i8* %uglygep14 to <4 x i32>*
  %scevgep16 = getelementptr <4 x i32>, <4 x i32>* %uglygep1415, i64 8002, !dbg !60
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep16, align 16, !dbg !60
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep13 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep13, i64 8003, !dbg !60
  %wide.load9.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !60
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !61
  %uglygep2829 = bitcast i8* %uglygep28 to <4 x i32>*
  %scevgep30 = getelementptr <4 x i32>, <4 x i32>* %uglygep2829, i64 8002, !dbg !61
  %wide.load10.1 = load <4 x i32>, <4 x i32>* %scevgep30, align 16, !dbg !61
  %uglygep25 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !61
  %uglygep2526 = bitcast i8* %uglygep25 to <4 x i32>*
  %scevgep27 = getelementptr <4 x i32>, <4 x i32>* %uglygep2526, i64 8003, !dbg !61
  %wide.load11.1 = load <4 x i32>, <4 x i32>* %scevgep27, align 16, !dbg !61
  %2 = add <4 x i32> %wide.load10.1, %wide.load.1, !dbg !61
  %3 = add <4 x i32> %wide.load11.1, %wide.load9.1, !dbg !61
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !61
  %uglygep2122 = bitcast i8* %uglygep21 to <4 x i32>*
  %scevgep23 = getelementptr <4 x i32>, <4 x i32>* %uglygep2122, i64 8002, !dbg !61
  store <4 x i32> %2, <4 x i32>* %scevgep23, align 16, !dbg !61
  %scevgep24 = getelementptr <4 x i32>, <4 x i32>* %uglygep2122, i64 8003, !dbg !61
  store <4 x i32> %3, <4 x i32>* %scevgep24, align 16, !dbg !61
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !58
  %4 = icmp eq i64 %lsr.iv.next, 0, !dbg !58
  br i1 %4, label %for.cond.cleanup, label %vector.body, !dbg !58, !llvm.loop !62

for.cond.cleanup:                                 ; preds = %vector.body
  ret i32 0, !dbg !65

; uselistorder directives
  uselistorder i64 %lsr.iv, { 8, 4, 3, 2, 7, 6, 0, 1, 5 }
  uselistorder i64 8003, { 1, 0, 2 }
  uselistorder i64 8002, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 4, 3, 2, 0, 1 }
  uselistorder i64 8001, { 1, 0, 2 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex101.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !24, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !22)
!22 = !{!23, !23}
!23 = !DISubrange(count: 1024)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !8, line: 25, type: !21, isLocal: false, isDefinition: true, align: 128)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "aaa", scope: !2, file: !8, line: 25, type: !34, isLocal: false, isDefinition: true, align: 128)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 536870912, elements: !35)
!35 = !{!36, !36, !36}
!36 = !DISubrange(count: 256)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "bbb", scope: !2, file: !8, line: 25, type: !34, isLocal: false, isDefinition: true, align: 128)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !8, line: 26, type: !10, isLocal: false, isDefinition: true)
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!47 = distinct !DISubprogram(name: "ex101", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_mem_write/ex101.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocation(line: 0, scope: !47)
!56 = !DILocation(line: 0, scope: !54)
!57 = !DILocation(line: 6, column: 2, scope: !54)
!58 = !DILocation(line: 6, column: 28, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!60 = !DILocation(line: 7, column: 11, scope: !59)
!61 = !DILocation(line: 7, column: 8, scope: !59)
!62 = distinct !{!62, !57, !63, !64}
!63 = !DILocation(line: 7, column: 14, scope: !54)
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !DILocation(line: 8, column: 2, scope: !47)
