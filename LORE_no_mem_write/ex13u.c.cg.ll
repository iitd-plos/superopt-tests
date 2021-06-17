; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex13u.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex13u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !26
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !28
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !30
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !32
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !37
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex13() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 512, metadata !55, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !60
  br label %for.cond1.preheader, !dbg !61

for.cond1.preheader:                              ; preds = %entry, %for.end16
  %lsr.iv = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %entry ], [ %13, %for.end16 ]
  %indvars.iv48 = phi i64 [ 0, %entry ], [ %indvars.iv.next49, %for.end16 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv48, metadata !52, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !54, metadata !DIExpression()), !dbg !60
  br label %for.cond4.preheader, !dbg !63

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %middle.block
  %lsr.iv72 = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @bb, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %for.cond1.preheader ], [ %12, %middle.block ]
  %lsr.iv59 = phi [1024 x [1024 x i32]]* [ %lsr.iv, %for.cond1.preheader ], [ %11, %middle.block ]
  %indvars.iv44 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next45, %middle.block ]
  %sum.042 = phi i32 [ 0, %for.cond1.preheader ], [ %10, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv44, metadata !54, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %sum.042, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !60
  %0 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %sum.042, i32 0, !dbg !65
  br label %vector.body, !dbg !65

vector.body:                                      ; preds = %vector.body, %for.cond4.preheader
  %index = phi i64 [ 0, %for.cond4.preheader ], [ %index.next.1, %vector.body ], !dbg !68
  %vec.phi = phi <4 x i32> [ %0, %for.cond4.preheader ], [ %7, %vector.body ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %for.cond4.preheader ], [ %8, %vector.body ]
  %scevgep66 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv59, i64 0, i64 0, i64 %index, !dbg !70
  %scevgep6667 = bitcast i32* %scevgep66 to <4 x i32>*
  %scevgep68 = getelementptr <4 x i32>, <4 x i32>* %scevgep6667, i64 -3, !dbg !70
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep68, align 16, !dbg !70
  %scevgep69 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv59, i64 0, i64 0, i64 %index, !dbg !70
  %scevgep6970 = bitcast i32* %scevgep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %scevgep6970, i64 -2, !dbg !70
  %wide.load52 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !70
  %scevgep79 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv72, i64 0, i64 0, i64 %index, !dbg !71
  %scevgep7980 = bitcast i32* %scevgep79 to <4 x i32>*
  %scevgep81 = getelementptr <4 x i32>, <4 x i32>* %scevgep7980, i64 -3, !dbg !71
  %wide.load53 = load <4 x i32>, <4 x i32>* %scevgep81, align 16, !dbg !71
  %scevgep82 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv72, i64 0, i64 0, i64 %index, !dbg !71
  %scevgep8283 = bitcast i32* %scevgep82 to <4 x i32>*
  %scevgep84 = getelementptr <4 x i32>, <4 x i32>* %scevgep8283, i64 -2, !dbg !71
  %wide.load54 = load <4 x i32>, <4 x i32>* %scevgep84, align 16, !dbg !71
  %1 = mul <4 x i32> %wide.load53, %wide.load, !dbg !72
  %2 = mul <4 x i32> %wide.load54, %wide.load52, !dbg !72
  %3 = add <4 x i32> %1, %vec.phi, !dbg !73
  %4 = add <4 x i32> %2, %vec.phi51, !dbg !73
  %scevgep63 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv59, i64 0, i64 0, i64 %index, !dbg !70
  %scevgep6364 = bitcast i32* %scevgep63 to <4 x i32>*
  %scevgep65 = getelementptr <4 x i32>, <4 x i32>* %scevgep6364, i64 -1, !dbg !70
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep65, align 16, !dbg !70
  %scevgep61 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv59, i64 0, i64 0, i64 %index, !dbg !70
  %scevgep6162 = bitcast i32* %scevgep61 to <4 x i32>*
  %wide.load52.1 = load <4 x i32>, <4 x i32>* %scevgep6162, align 16, !dbg !70
  %scevgep76 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv72, i64 0, i64 0, i64 %index, !dbg !71
  %scevgep7677 = bitcast i32* %scevgep76 to <4 x i32>*
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %scevgep7677, i64 -1, !dbg !71
  %wide.load53.1 = load <4 x i32>, <4 x i32>* %scevgep78, align 16, !dbg !71
  %scevgep74 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv72, i64 0, i64 0, i64 %index, !dbg !71
  %scevgep7475 = bitcast i32* %scevgep74 to <4 x i32>*
  %wide.load54.1 = load <4 x i32>, <4 x i32>* %scevgep7475, align 16, !dbg !71
  %5 = mul <4 x i32> %wide.load53.1, %wide.load.1, !dbg !72
  %6 = mul <4 x i32> %wide.load54.1, %wide.load52.1, !dbg !72
  %7 = add <4 x i32> %5, %3, !dbg !73
  %8 = add <4 x i32> %6, %4, !dbg !73
  %index.next.1 = add nuw nsw i64 %index, 16, !dbg !68
  %9 = icmp eq i64 %index.next.1, 512, !dbg !68
  br i1 %9, label %middle.block, label %vector.body, !dbg !68, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %8, %7, !dbg !65
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !65
  %bin.rdx85 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !65
  %rdx.shuf86 = shufflevector <4 x i32> %bin.rdx85, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !65
  %bin.rdx87 = add <4 x i32> %bin.rdx85, %rdx.shuf86, !dbg !65
  %10 = extractelement <4 x i32> %bin.rdx87, i32 0, !dbg !65
  call void @llvm.dbg.value(metadata i32 %10, metadata !56, metadata !DIExpression()), !dbg !62
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1, !dbg !77
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next45, metadata !54, metadata !DIExpression()), !dbg !60
  %scevgep60 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv59, i64 0, i64 1, i64 0, !dbg !63
  %11 = bitcast i32* %scevgep60 to [1024 x [1024 x i32]]*, !dbg !63
  %scevgep73 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv72, i64 0, i64 1, i64 0, !dbg !63
  %12 = bitcast i32* %scevgep73 to [1024 x [1024 x i32]]*, !dbg !63
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 512, !dbg !78
  br i1 %exitcond47.not, label %for.end16, label %for.cond4.preheader, !dbg !63, !llvm.loop !79

for.end16:                                        ; preds = %middle.block
  call void @llvm.dbg.value(metadata i32 %10, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %10, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %10, metadata !56, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.value(metadata i32 %10, metadata !56, metadata !DIExpression()), !dbg !62
  %arrayidx18 = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv48, !dbg !81
  store i32 %10, i32* %arrayidx18, align 4, !dbg !82
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !83
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next49, metadata !52, metadata !DIExpression()), !dbg !60
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !61
  %13 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !61
  %exitcond50.not = icmp eq i64 %indvars.iv.next49, 512, !dbg !84
  br i1 %exitcond50.not, label %for.end21, label %for.cond1.preheader, !dbg !61, !llvm.loop !85

for.end21:                                        ; preds = %for.end16
  ret void, !dbg !87

; uselistorder directives
  uselistorder i32 %10, { 1, 0 }
  uselistorder i64 %index, { 8, 3, 2, 7, 6, 0, 1, 4, 5 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv59, { 4, 3, 2, 0, 1 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv72, { 4, 3, 2, 0, 1 }
  uselistorder i64 %indvars.iv48, { 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder i64 1, { 2, 3, 0, 1, 4 }
  uselistorder i64 512, { 1, 2, 0 }
  uselistorder i32 0, { 0, 4, 1, 2, 3, 5, 6, 7 }
  uselistorder i64 0, { 22, 23, 29, 8, 9, 20, 21, 6, 7, 4, 5, 18, 19, 16, 17, 0, 1, 2, 3, 12, 13, 14, 15, 26, 28, 10, 11, 27, 24, 25 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 12, 9, 2, 1, 0, 11, 10, 7, 8, 4, 5, 6, 3, 13, 15, 14 }
  uselistorder label %for.cond4.preheader, { 1, 0 }
  uselistorder label %for.cond1.preheader, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex13u.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
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
!47 = distinct !DISubprogram(name: "ex13", scope: !48, file: !48, line: 4, type: !49, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex13u.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !DILocalVariable(name: "k", scope: !47, file: !48, line: 7, type: !10)
!53 = !DILocalVariable(name: "j", scope: !47, file: !48, line: 7, type: !10)
!54 = !DILocalVariable(name: "i", scope: !47, file: !48, line: 7, type: !10)
!55 = !DILocalVariable(name: "len", scope: !47, file: !48, line: 8, type: !10)
!56 = !DILocalVariable(name: "sum", scope: !57, file: !48, line: 10, type: !10)
!57 = distinct !DILexicalBlock(scope: !58, file: !48, line: 9, column: 29)
!58 = distinct !DILexicalBlock(scope: !59, file: !48, line: 9, column: 3)
!59 = distinct !DILexicalBlock(scope: !47, file: !48, line: 9, column: 3)
!60 = !DILocation(line: 0, scope: !47)
!61 = !DILocation(line: 9, column: 3, scope: !59)
!62 = !DILocation(line: 0, scope: !57)
!63 = !DILocation(line: 11, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !48, line: 11, column: 5)
!65 = !DILocation(line: 13, column: 7, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !48, line: 13, column: 7)
!67 = distinct !DILexicalBlock(scope: !64, file: !48, line: 11, column: 5)
!68 = !DILocation(line: 13, column: 29, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !48, line: 13, column: 7)
!70 = !DILocation(line: 14, column: 18, scope: !69)
!71 = !DILocation(line: 14, column: 31, scope: !69)
!72 = !DILocation(line: 14, column: 29, scope: !69)
!73 = !DILocation(line: 14, column: 15, scope: !69)
!74 = distinct !{!74, !65, !75, !76}
!75 = !DILocation(line: 14, column: 38, scope: !66)
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !DILocation(line: 11, column: 27, scope: !67)
!78 = !DILocation(line: 11, column: 19, scope: !67)
!79 = distinct !{!79, !63, !80}
!80 = !DILocation(line: 14, column: 38, scope: !64)
!81 = !DILocation(line: 16, column: 5, scope: !57)
!82 = !DILocation(line: 16, column: 10, scope: !57)
!83 = !DILocation(line: 9, column: 25, scope: !58)
!84 = !DILocation(line: 9, column: 17, scope: !58)
!85 = distinct !{!85, !61, !86}
!86 = !DILocation(line: 17, column: 3, scope: !59)
!87 = !DILocation(line: 19, column: 1, scope: !47)
