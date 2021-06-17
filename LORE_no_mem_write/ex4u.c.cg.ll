; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex4u.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex4u.c"
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
define dso_local i32 @ex4u() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !60
  br label %vector.ph, !dbg !61

vector.ph:                                        ; preds = %middle.block, %entry
  %lsr.iv = phi [1024 x [1024 x i32]]* [ %12, %middle.block ], [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 28) to [1024 x [1024 x i32]]*), %entry ]
  %indvars.iv27 = phi i64 [ 0, %entry ], [ %indvars.iv.next28, %middle.block ]
  %ret.025 = phi i32 [ 0, %entry ], [ %add9, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv27, metadata !53, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %ret.025, metadata !52, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %ret.025, metadata !52, metadata !DIExpression()), !dbg !59
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %ret.025, i32 0, !dbg !63
  br label %vector.body, !dbg !63

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ], !dbg !64
  %vec.phi = phi <4 x i32> [ %0, %vector.ph ], [ %7, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %scevgep51 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep5152 = bitcast i32* %scevgep51 to <4 x i32>*
  %scevgep53 = getelementptr <4 x i32>, <4 x i32>* %scevgep5152, i64 -7, !dbg !66
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep53, align 16, !dbg !66
  %scevgep54 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep5455 = bitcast i32* %scevgep54 to <4 x i32>*
  %scevgep56 = getelementptr <4 x i32>, <4 x i32>* %scevgep5455, i64 -6, !dbg !66
  %wide.load31 = load <4 x i32>, <4 x i32>* %scevgep56, align 16, !dbg !66
  %1 = add <4 x i32> %wide.load, %vec.phi, !dbg !67
  %2 = add <4 x i32> %wide.load31, %vec.phi30, !dbg !67
  %scevgep43 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep4344 = bitcast i32* %scevgep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %scevgep4344, i64 -5, !dbg !66
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !66
  %scevgep40 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep4041 = bitcast i32* %scevgep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %scevgep4041, i64 -4, !dbg !66
  %wide.load31.1 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !66
  %3 = add <4 x i32> %wide.load.1, %1, !dbg !67
  %4 = add <4 x i32> %wide.load31.1, %2, !dbg !67
  %scevgep37 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep3738 = bitcast i32* %scevgep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %scevgep3738, i64 -3, !dbg !66
  %wide.load.2 = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !66
  %scevgep34 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep3435 = bitcast i32* %scevgep34 to <4 x i32>*
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %scevgep3435, i64 -2, !dbg !66
  %wide.load31.2 = load <4 x i32>, <4 x i32>* %scevgep36, align 16, !dbg !66
  %5 = add <4 x i32> %wide.load.2, %3, !dbg !67
  %6 = add <4 x i32> %wide.load31.2, %4, !dbg !67
  %scevgep48 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep4849 = bitcast i32* %scevgep48 to <4 x i32>*
  %scevgep50 = getelementptr <4 x i32>, <4 x i32>* %scevgep4849, i64 -1, !dbg !66
  %wide.load.3 = load <4 x i32>, <4 x i32>* %scevgep50, align 16, !dbg !66
  %scevgep46 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 0, i64 %index, !dbg !66
  %scevgep4647 = bitcast i32* %scevgep46 to <4 x i32>*
  %wide.load31.3 = load <4 x i32>, <4 x i32>* %scevgep4647, align 16, !dbg !66
  %7 = add <4 x i32> %wide.load.3, %5, !dbg !67
  %8 = add <4 x i32> %wide.load31.3, %6, !dbg !67
  %index.next.3 = add nuw nsw i64 %index, 32, !dbg !64
  %9 = icmp eq i64 %index.next.3, 1024, !dbg !64
  br i1 %9, label %middle.block, label %vector.body, !dbg !64, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7, !dbg !63
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !63
  %bin.rdx57 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !63
  %rdx.shuf58 = shufflevector <4 x i32> %bin.rdx57, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !63
  %bin.rdx59 = add <4 x i32> %bin.rdx57, %rdx.shuf58, !dbg !63
  %10 = extractelement <4 x i32> %bin.rdx59, i32 0, !dbg !63
  call void @llvm.dbg.value(metadata i32 %10, metadata !52, metadata !DIExpression()), !dbg !59
  %arrayidx8 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv27, !dbg !71
  %11 = load i32, i32* %arrayidx8, align 4, !dbg !71
  %add9 = add i32 %11, %10, !dbg !72
  call void @llvm.dbg.value(metadata i32 %add9, metadata !52, metadata !DIExpression()), !dbg !59
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next28, metadata !53, metadata !DIExpression()), !dbg !60
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !61
  %12 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !61
  %exitcond29.not = icmp eq i64 %indvars.iv.next28, 1024, !dbg !74
  br i1 %exitcond29.not, label %for.cond.cleanup, label %vector.ph, !dbg !61, !llvm.loop !75

for.cond.cleanup:                                 ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %add9, metadata !52, metadata !DIExpression()), !dbg !59
  ret i32 %add9, !dbg !77

; uselistorder directives
  uselistorder i64 %index, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i64 %indvars.iv27, { 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 8, 3, 2, 7, 6, 5, 4, 0, 1 }
  uselistorder i64 1024, { 1, 0 }
  uselistorder i32 0, { 0, 4, 1, 2, 3, 5, 6, 7 }
  uselistorder i64 0, { 16, 17, 22, 6, 7, 4, 5, 14, 15, 12, 13, 10, 11, 8, 9, 0, 1, 2, 3, 20, 21, 18, 19 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 4, 7, 6, 5, 2, 3, 1, 0, 8, 9 }
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
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex4u.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
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
!47 = distinct !DISubprogram(name: "ex4u", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex4u.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53, !55}
!52 = !DILocalVariable(name: "ret", scope: !47, file: !48, line: 5, type: !10)
!53 = !DILocalVariable(name: "i", scope: !54, file: !48, line: 6, type: !10)
!54 = distinct !DILexicalBlock(scope: !47, file: !48, line: 6, column: 2)
!55 = !DILocalVariable(name: "j", scope: !56, file: !48, line: 8, type: !10)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 8, column: 5)
!57 = distinct !DILexicalBlock(scope: !58, file: !48, line: 6, column: 33)
!58 = distinct !DILexicalBlock(scope: !54, file: !48, line: 6, column: 2)
!59 = !DILocation(line: 0, scope: !47)
!60 = !DILocation(line: 0, scope: !54)
!61 = !DILocation(line: 6, column: 2, scope: !54)
!62 = !DILocation(line: 0, scope: !56)
!63 = !DILocation(line: 8, column: 5, scope: !56)
!64 = !DILocation(line: 8, column: 32, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !48, line: 8, column: 5)
!66 = !DILocation(line: 9, column: 12, scope: !65)
!67 = !DILocation(line: 9, column: 9, scope: !65)
!68 = distinct !{!68, !63, !69, !70}
!69 = !DILocation(line: 9, column: 19, scope: !56)
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !DILocation(line: 10, column: 10, scope: !57)
!72 = !DILocation(line: 10, column: 7, scope: !57)
!73 = !DILocation(line: 6, column: 29, scope: !58)
!74 = !DILocation(line: 6, column: 20, scope: !58)
!75 = distinct !{!75, !61, !76}
!76 = !DILocation(line: 11, column: 3, scope: !54)
!77 = !DILocation(line: 12, column: 2, scope: !47)
