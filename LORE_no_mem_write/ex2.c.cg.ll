; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex2.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex2() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !59
  br label %vector.ph, !dbg !60

vector.ph:                                        ; preds = %middle.block, %entry
  %lsr.iv = phi [1024 x [1024 x i32]]* [ %11, %middle.block ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 28) to [1024 x [1024 x i32]]*), %entry ]
  %indvars.iv22 = phi i64 [ 0, %entry ], [ %indvars.iv.next23, %middle.block ]
  %ret.020 = phi i32 [ 0, %entry ], [ %10, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv22, metadata !53, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 %ret.020, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %ret.020, metadata !52, metadata !DIExpression()), !dbg !58
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.020, i32 0, !dbg !62
  br label %vector.body, !dbg !62

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ], !dbg !63
  %vec.phi = phi <4 x i32> [ %0, %vector.ph ], [ %7, %vector.body ]
  %vec.phi25 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %scevgep48 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep4849 = bitcast i32* %scevgep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %scevgep4849, i64 -7, !dbg !65
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !65
  %scevgep51 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep5152 = bitcast i32* %scevgep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %scevgep5152, i64 -6, !dbg !65
  %wide.load26 = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !65
  %1 = add <4 x i32> %wide.load, %vec.phi, !dbg !66
  %2 = add <4 x i32> %wide.load26, %vec.phi25, !dbg !66
  %scevgep40 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep4041 = bitcast i32* %scevgep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %scevgep4041, i64 -5, !dbg !65
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !65
  %scevgep37 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep3738 = bitcast i32* %scevgep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %scevgep3738, i64 -4, !dbg !65
  %wide.load26.1 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !65
  %3 = add <4 x i32> %wide.load.1, %1, !dbg !66
  %4 = add <4 x i32> %wide.load26.1, %2, !dbg !66
  %scevgep34 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep3435 = bitcast i32* %scevgep34 to <4 x i32>*
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %scevgep3435, i64 -3, !dbg !65
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep36, align 16, !dbg !65
  %scevgep31 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep3132 = bitcast i32* %scevgep31 to <4 x i32>*
  %scevgep33 = getelementptr <4 x i32>, <4 x i32>* %scevgep3132, i64 -2, !dbg !65
  %wide.load26.2 = load <4 x i32>, <4 x i32>* %scevgep33, align 16, !dbg !65
  %5 = add <4 x i32> %wide.load.2, %3, !dbg !66
  %6 = add <4 x i32> %wide.load26.2, %4, !dbg !66
  %scevgep45 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep4546 = bitcast i32* %scevgep45 to <4 x i32>*
  %scevgep47 = getelementptr <4 x i32>, <4 x i32>* %scevgep4546, i64 -1, !dbg !65
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep47, align 16, !dbg !65
  %scevgep43 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !65
  %scevgep4344 = bitcast i32* %scevgep43 to <4 x i32>*
  %wide.load26.3 = load <4 x i32>, <4 x i32>* %scevgep4344, align 16, !dbg !65
  %7 = add <4 x i32> %wide.load.3, %5, !dbg !66
  %8 = add <4 x i32> %wide.load26.3, %6, !dbg !66
  %index.next.3 = add nuw nsw i64 %index, 32, !dbg !63
  %9 = icmp eq i64 %index.next.3, 1024, !dbg !63
  br i1 %9, label %middle.block, label %vector.body, !dbg !63, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7, !dbg !62
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !62
  %bin.rdx54 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !62
  %rdx.shuf55 = shufflevector <4 x i32> %bin.rdx54, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !62
  %bin.rdx56 = add <4 x i32> %bin.rdx54, %rdx.shuf55, !dbg !62
  %10 = extractelement <4 x i32> %bin.rdx56, i32 0, !dbg !62
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !58
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !70
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next23, metadata !53, metadata !DIExpression()), !dbg !59
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !60
  %11 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !60
  %exitcond24.not = icmp eq i64 %indvars.iv.next23, 1024, !dbg !71
  br i1 %exitcond24.not, label %for.cond.cleanup, label %vector.ph, !dbg !60, !llvm.loop !72

for.cond.cleanup:                                 ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !58
  ret i32 %10, !dbg !74

; uselistorder directives
  uselistorder i32 %10, { 1, 0 }
  uselistorder i64 %index, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i64 1024, { 1, 0 }
  uselistorder i32 0, { 0, 4, 1, 2, 3, 5, 6, 7 }
  uselistorder i64 0, { 16, 17, 6, 7, 4, 5, 14, 15, 12, 13, 10, 11, 8, 9, 0, 1, 2, 3, 20, 21, 18, 19 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 7, 2, 1, 0, 9, 8, 5, 6, 4, 3, 10, 11 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex2.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !0, !21, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !24)
!24 = !{!25, !25}
!25 = !DISubrange(count: 1024)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
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
!47 = distinct !DISubprogram(name: "ex2", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex2.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 7, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 7, column: 4)
!57 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!58 = !DILocation(line: 0, scope: !47)
!59 = !DILocation(line: 0, scope: !54)
!60 = !DILocation(line: 6, column: 2, scope: !54)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 7, column: 4, scope: !56)
!63 = !DILocation(line: 7, column: 31, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !48, line: 7, column: 4)
!65 = !DILocation(line: 8, column: 12, scope: !64)
!66 = !DILocation(line: 8, column: 9, scope: !64)
!67 = distinct !{!67, !62, !68, !69}
!68 = !DILocation(line: 8, column: 19, scope: !56)
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !DILocation(line: 6, column: 29, scope: !57)
!71 = !DILocation(line: 6, column: 20, scope: !57)
!72 = distinct !{!72, !60, !73}
!73 = !DILocation(line: 8, column: 19, scope: !54)
!74 = !DILocation(line: 9, column: 2, scope: !47)
