; ModuleID = '/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/ex12.c'
source_filename = "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/ex12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !13

; Function Attrs: nofree noinline norecurse nounwind
define dso_local void @ex12() local_unnamed_addr #0 !dbg !22 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !27, metadata !DIExpression()), !dbg !34
  br label %for.body, !dbg !35

for.body:                                         ; preds = %entry, %middle.block
  %lsr.iv108 = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 7, i64 0) to [1024 x [1024 x i32]]*), %entry ], [ %41, %middle.block ]
  %lsr.iv = phi [1024 x [1024 x i32]]* [ bitcast (i32* getelementptr inbounds ([1024 x [1024 x i32]], [1024 x [1024 x i32]]* @aa, i64 0, i64 0, i64 12) to [1024 x [1024 x i32]]*), %entry ], [ %40, %middle.block ]
  %indvars.iv61 = phi i64 [ 0, %entry ], [ %indvars.iv.next62, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv61, metadata !27, metadata !DIExpression()), !dbg !34
  %arrayidx = getelementptr [32000 x i32], [32000 x i32]* @a, i64 0, i64 %indvars.iv61, !dbg !36
  call void @llvm.dbg.value(metadata i32 undef, metadata !29, metadata !DIExpression()), !dbg !37
  %arrayidx2 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv61, !dbg !38
  %0 = load i32, i32* %arrayidx2, align 4, !dbg !38
  call void @llvm.dbg.value(metadata i32 %0, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !34
  %1 = load i32, i32* %arrayidx, align 4, !dbg !36
  call void @llvm.dbg.value(metadata i32 %1, metadata !29, metadata !DIExpression()), !dbg !37
  %2 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %1, i32 0, !dbg !39
  br label %vector.body68, !dbg !39

vector.body68:                                    ; preds = %vector.body68, %for.body
  %lsr.iv88 = phi i64 [ %lsr.iv.next, %vector.body68 ], [ 0, %for.body ], !dbg !41
  %vec.phi74 = phi <4 x i32> [ %2, %for.body ], [ %10, %vector.body68 ]
  %vec.phi75 = phi <4 x i32> [ zeroinitializer, %for.body ], [ %11, %vector.body68 ]
  %3 = bitcast [1024 x [1024 x i32]]* %lsr.iv to i8*
  %uglygep94 = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !43
  %uglygep9495 = bitcast i8* %uglygep94 to <4 x i32>*
  %scevgep96 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 -3, !dbg !43
  %wide.load76 = load <4 x i32>, <4 x i32>* %scevgep96, align 16, !dbg !43
  %scevgep97 = getelementptr <4 x i32>, <4 x i32>* %uglygep9495, i64 -2, !dbg !43
  %wide.load77 = load <4 x i32>, <4 x i32>* %scevgep97, align 16, !dbg !43
  %uglygep105 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !44
  %uglygep105106 = bitcast i8* %uglygep105 to <4 x i32>*
  %wide.load78 = load <4 x i32>, <4 x i32>* %uglygep105106, align 16, !dbg !44
  %scevgep107 = getelementptr <4 x i32>, <4 x i32>* %uglygep105106, i64 1, !dbg !44
  %wide.load79 = load <4 x i32>, <4 x i32>* %scevgep107, align 16, !dbg !44
  %4 = mul <4 x i32> %wide.load78, %wide.load76, !dbg !45
  %5 = mul <4 x i32> %wide.load79, %wide.load77, !dbg !45
  %6 = add <4 x i32> %4, %vec.phi74, !dbg !46
  %7 = add <4 x i32> %5, %vec.phi75, !dbg !46
  %uglygep91 = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !43
  %uglygep9192 = bitcast i8* %uglygep91 to <4 x i32>*
  %scevgep93 = getelementptr <4 x i32>, <4 x i32>* %uglygep9192, i64 -1, !dbg !43
  %wide.load76.1 = load <4 x i32>, <4 x i32>* %scevgep93, align 16, !dbg !43
  %uglygep = getelementptr i8, i8* %3, i64 %lsr.iv88, !dbg !43
  %uglygep90 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load77.1 = load <4 x i32>, <4 x i32>* %uglygep90, align 16, !dbg !43
  %uglygep102 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !44
  %uglygep102103 = bitcast i8* %uglygep102 to <4 x i32>*
  %scevgep104 = getelementptr <4 x i32>, <4 x i32>* %uglygep102103, i64 2, !dbg !44
  %wide.load78.1 = load <4 x i32>, <4 x i32>* %scevgep104, align 16, !dbg !44
  %uglygep99 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv88, !dbg !44
  %uglygep99100 = bitcast i8* %uglygep99 to <4 x i32>*
  %scevgep101 = getelementptr <4 x i32>, <4 x i32>* %uglygep99100, i64 3, !dbg !44
  %wide.load79.1 = load <4 x i32>, <4 x i32>* %scevgep101, align 16, !dbg !44
  %8 = mul <4 x i32> %wide.load78.1, %wide.load76.1, !dbg !45
  %9 = mul <4 x i32> %wide.load79.1, %wide.load77.1, !dbg !45
  %10 = add <4 x i32> %8, %6, !dbg !46
  %11 = add <4 x i32> %9, %7, !dbg !46
  %lsr.iv.next = add nuw nsw i64 %lsr.iv88, 64, !dbg !41
  %12 = icmp eq i64 %lsr.iv.next, 4096, !dbg !41
  br i1 %12, label %middle.block66, label %vector.body68, !dbg !41, !llvm.loop !47

middle.block66:                                   ; preds = %vector.body68
  %bin.rdx80 = add <4 x i32> %11, %10, !dbg !39
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx80, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !39
  %bin.rdx127 = add <4 x i32> %bin.rdx80, %rdx.shuf, !dbg !39
  %rdx.shuf128 = shufflevector <4 x i32> %bin.rdx127, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !39
  %bin.rdx129 = add <4 x i32> %bin.rdx127, %rdx.shuf128, !dbg !39
  %13 = extractelement <4 x i32> %bin.rdx129, i32 0, !dbg !39
  call void @llvm.dbg.value(metadata i32 %13, metadata !29, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 %0, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.value(metadata i32 0, metadata !28, metadata !DIExpression()), !dbg !34
  %14 = insertelement <4 x i32> <i32 undef, i32 0, i32 0, i32 0>, i32 %0, i32 0, !dbg !50
  br label %vector.body, !dbg !50

vector.body:                                      ; preds = %vector.body, %middle.block66
  %lsr.iv120 = phi i64 [ %lsr.iv.next121, %vector.body ], [ -4096, %middle.block66 ], !dbg !52
  %lsr.iv110 = phi [1024 x [1024 x i32]]* [ %35, %vector.body ], [ %lsr.iv108, %middle.block66 ], !dbg !52
  %vec.phi = phi <4 x i32> [ %14, %middle.block66 ], [ %33, %vector.body ]
  %vec.phi64 = phi <4 x i32> [ zeroinitializer, %middle.block66 ], [ %34, %vector.body ]
  %lsr.iv110112 = bitcast [1024 x [1024 x i32]]* %lsr.iv110 to i32*
  %scevgep119 = getelementptr i32, i32* %lsr.iv110112, i64 -7168, !dbg !54
  %scevgep118 = getelementptr i32, i32* %lsr.iv110112, i64 -6144, !dbg !54
  %scevgep117 = getelementptr i32, i32* %lsr.iv110112, i64 -5120, !dbg !54
  %scevgep116 = getelementptr i32, i32* %lsr.iv110112, i64 -4096, !dbg !54
  %scevgep115 = getelementptr i32, i32* %lsr.iv110112, i64 -3072, !dbg !54
  %scevgep114 = getelementptr i32, i32* %lsr.iv110112, i64 -2048, !dbg !54
  %scevgep113 = getelementptr i32, i32* %lsr.iv110112, i64 -1024, !dbg !54
  %15 = load i32, i32* %scevgep119, align 4, !dbg !54
  %16 = load i32, i32* %scevgep118, align 4, !dbg !54
  %17 = load i32, i32* %scevgep117, align 4, !dbg !54
  %18 = load i32, i32* %scevgep116, align 4, !dbg !54
  %19 = insertelement <4 x i32> undef, i32 %15, i32 0, !dbg !54
  %20 = insertelement <4 x i32> %19, i32 %16, i32 1, !dbg !54
  %21 = insertelement <4 x i32> %20, i32 %17, i32 2, !dbg !54
  %22 = insertelement <4 x i32> %21, i32 %18, i32 3, !dbg !54
  %23 = load i32, i32* %scevgep115, align 4, !dbg !54
  %24 = load i32, i32* %scevgep114, align 4, !dbg !54
  %25 = load i32, i32* %scevgep113, align 4, !dbg !54
  %26 = load i32, i32* %lsr.iv110112, align 4, !dbg !54
  %27 = insertelement <4 x i32> undef, i32 %23, i32 0, !dbg !55
  %28 = insertelement <4 x i32> %27, i32 %24, i32 1, !dbg !55
  %29 = insertelement <4 x i32> %28, i32 %25, i32 2, !dbg !55
  %30 = insertelement <4 x i32> %29, i32 %26, i32 3, !dbg !55
  %uglygep123 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv120, !dbg !55
  %uglygep123124 = bitcast i8* %uglygep123 to <4 x i32>*
  %scevgep125 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 256, !dbg !55
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep125, align 16, !dbg !55
  %scevgep126 = getelementptr <4 x i32>, <4 x i32>* %uglygep123124, i64 257, !dbg !55
  %wide.load65 = load <4 x i32>, <4 x i32>* %scevgep126, align 16, !dbg !55
  %31 = mul <4 x i32> %wide.load, %22, !dbg !52
  %32 = mul <4 x i32> %wide.load65, %30, !dbg !52
  %33 = add <4 x i32> %31, %vec.phi, !dbg !56
  %34 = add <4 x i32> %32, %vec.phi64, !dbg !56
  %scevgep111 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv110, i64 0, i64 8, i64 0, !dbg !52
  %35 = bitcast i32* %scevgep111 to [1024 x [1024 x i32]]*, !dbg !52
  %lsr.iv.next121 = add nsw i64 %lsr.iv120, 32, !dbg !52
  %36 = icmp eq i64 %lsr.iv.next121, 0, !dbg !52
  br i1 %36, label %middle.block, label %vector.body, !dbg !52, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %34, %33, !dbg !50
  %rdx.shuf130 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !50
  %bin.rdx131 = add <4 x i32> %bin.rdx, %rdx.shuf130, !dbg !50
  %rdx.shuf132 = shufflevector <4 x i32> %bin.rdx131, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !50
  %bin.rdx133 = add <4 x i32> %bin.rdx131, %rdx.shuf132, !dbg !50
  %37 = extractelement <4 x i32> %bin.rdx133, i32 0, !dbg !50
  call void @llvm.dbg.value(metadata i32 %37, metadata !33, metadata !DIExpression()), !dbg !37
  %sunkaddr = mul i64 %indvars.iv61, 4, !dbg !59
  %sunkaddr134 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %sunkaddr, !dbg !59
  %38 = bitcast i8* %sunkaddr134 to i32*, !dbg !59
  store i32 %13, i32* %38, align 4, !dbg !59
  %sunkaddr135 = mul i64 %indvars.iv61, 4, !dbg !60
  %sunkaddr136 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %sunkaddr135, !dbg !60
  %39 = bitcast i8* %sunkaddr136 to i32*, !dbg !60
  store i32 %37, i32* %39, align 4, !dbg !60
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !61
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next62, metadata !27, metadata !DIExpression()), !dbg !34
  %scevgep = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv, i64 0, i64 1, i64 0, !dbg !35
  %40 = bitcast i32* %scevgep to [1024 x [1024 x i32]]*, !dbg !35
  %scevgep109 = getelementptr [1024 x [1024 x i32]], [1024 x [1024 x i32]]* %lsr.iv108, i64 0, i64 0, i64 1, !dbg !35
  %41 = bitcast i32* %scevgep109 to [1024 x [1024 x i32]]*, !dbg !35
  %exitcond63.not = icmp eq i64 %indvars.iv.next62, 1024, !dbg !62
  br i1 %exitcond63.not, label %for.end32, label %for.body, !dbg !35, !llvm.loop !63

for.end32:                                        ; preds = %middle.block
  ret void, !dbg !65

; uselistorder directives
  uselistorder i32* %lsr.iv110112, { 7, 6, 5, 4, 3, 2, 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv110, { 1, 0 }
  uselistorder i64 %lsr.iv120, { 1, 0 }
  uselistorder i64 %lsr.iv88, { 6, 2, 1, 5, 4, 0, 3 }
  uselistorder i64 %indvars.iv61, { 4, 0, 1, 3, 2 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv, { 1, 0 }
  uselistorder [1024 x [1024 x i32]]* %lsr.iv108, { 1, 0 }
  uselistorder i64 -4096, { 1, 0 }
  uselistorder <4 x i32> undef, { 0, 1, 4, 5, 2, 3 }
  uselistorder i64 1, { 0, 2, 3, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @b to i8*), { 0, 1, 4, 3, 2 }
  uselistorder <4 x i32> zeroinitializer, { 1, 0 }
  uselistorder i32 0, { 0, 7, 8, 6, 1, 5, 2, 3, 4 }
  uselistorder i64 0, { 3, 4, 8, 9, 0, 1, 2, 7, 13, 14, 12, 10, 11, 5, 6 }
  uselistorder [1024 x [1024 x i32]]* @aa, { 1, 0 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 9, 4, 2, 3, 5, 0, 6, 7, 8, 1, 10 }
  uselistorder label %for.body, { 1, 0 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/BLR_demo/ex12.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests/build/BLR_demo")
!4 = !{}
!5 = !{!0, !6, !13}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "BLR_demo/globals1.h", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024000, elements: !11)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DISubrange(count: 32000)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !15, isLocal: false, isDefinition: true, align: 128)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 33554432, elements: !16)
!16 = !{!17, !17}
!17 = !DISubrange(count: 1024)
!18 = !{i32 7, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{!"clang version 12.0.0 (https://github.com/bsorav/llvm-project2 fbc599d0147c436382fe975c54bbb42a920092a2)"}
!22 = distinct !DISubprogram(name: "ex12", scope: !23, file: !23, line: 5, type: !24, scopeLine: 7, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !26)
!23 = !DIFile(filename: "BLR_demo/ex12.c", directory: "/home/shubhani/superopt-project-ssa_perf_fixes/superopt-tests")
!24 = !DISubroutineType(types: !25)
!25 = !{null}
!26 = !{!27, !28, !29, !33}
!27 = !DILocalVariable(name: "i", scope: !22, file: !23, line: 8, type: !10)
!28 = !DILocalVariable(name: "j", scope: !22, file: !23, line: 8, type: !10)
!29 = !DILocalVariable(name: "sum1", scope: !30, file: !23, line: 11, type: !10)
!30 = distinct !DILexicalBlock(scope: !31, file: !23, line: 10, column: 30)
!31 = distinct !DILexicalBlock(scope: !32, file: !23, line: 10, column: 3)
!32 = distinct !DILexicalBlock(scope: !22, file: !23, line: 10, column: 3)
!33 = !DILocalVariable(name: "sum2", scope: !30, file: !23, line: 11, type: !10)
!34 = !DILocation(line: 0, scope: !22)
!35 = !DILocation(line: 10, column: 3, scope: !32)
!36 = !DILocation(line: 11, column: 16, scope: !30)
!37 = !DILocation(line: 0, scope: !30)
!38 = !DILocation(line: 11, column: 33, scope: !30)
!39 = !DILocation(line: 12, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !23, line: 12, column: 5)
!41 = !DILocation(line: 12, column: 28, scope: !42)
!42 = distinct !DILexicalBlock(scope: !40, file: !23, line: 12, column: 5)
!43 = !DILocation(line: 13, column: 15, scope: !42)
!44 = !DILocation(line: 13, column: 26, scope: !42)
!45 = !DILocation(line: 13, column: 24, scope: !42)
!46 = !DILocation(line: 13, column: 12, scope: !42)
!47 = distinct !{!47, !39, !48, !49}
!48 = !DILocation(line: 13, column: 29, scope: !40)
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !DILocation(line: 14, column: 5, scope: !51)
!51 = distinct !DILexicalBlock(scope: !30, file: !23, line: 14, column: 5)
!52 = !DILocation(line: 14, column: 28, scope: !53)
!53 = distinct !DILexicalBlock(scope: !51, file: !23, line: 14, column: 5)
!54 = !DILocation(line: 15, column: 15, scope: !53)
!55 = !DILocation(line: 15, column: 26, scope: !53)
!56 = !DILocation(line: 15, column: 12, scope: !53)
!57 = distinct !{!57, !50, !58, !49}
!58 = !DILocation(line: 15, column: 29, scope: !51)
!59 = !DILocation(line: 16, column: 10, scope: !30)
!60 = !DILocation(line: 17, column: 10, scope: !30)
!61 = !DILocation(line: 10, column: 26, scope: !31)
!62 = !DILocation(line: 10, column: 17, scope: !31)
!63 = distinct !{!63, !35, !64}
!64 = !DILocation(line: 18, column: 3, scope: !32)
!65 = !DILocation(line: 19, column: 1, scope: !22)
