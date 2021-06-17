; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex11.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex11.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !0
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !21
@alpha = dso_local local_unnamed_addr global i32 0, align 4, !dbg !43
@beta = dso_local local_unnamed_addr global i32 0, align 4, !dbg !46
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
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
define dso_local void @ex11() local_unnamed_addr #0 !dbg !52 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !56, metadata !DIExpression()), !dbg !63
  %0 = load i32, i32* @alpha, align 4, !dbg !64
  %1 = load i32, i32* @beta, align 4, !dbg !64
  br label %vector.ph, !dbg !65

vector.ph:                                        ; preds = %middle.block, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %middle.block ], [ 16, %entry ]
  %indvars.iv43 = phi i64 [ 0, %entry ], [ %indvars.iv.next44, %middle.block ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv43, metadata !56, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 0, metadata !58, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 0, metadata !57, metadata !DIExpression()), !dbg !63
  br label %vector.body, !dbg !66

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv62 = phi i64 [ %lsr.iv.next63, %vector.body ], [ -4096, %vector.ph ], !dbg !68
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %12, %vector.body ]
  %vec.phi46 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %13, %vector.body ]
  %vec.phi47 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %vec.phi48 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %2 = add i64 %lsr.iv, %lsr.iv62, !dbg !70
  %uglygep = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %2, !dbg !70
  %uglygep64 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep64, i64 255, !dbg !70
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !70
  %3 = add i64 %lsr.iv, %lsr.iv62, !dbg !70
  %uglygep65 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %3, !dbg !70
  %uglygep6566 = bitcast i8* %uglygep65 to <4 x i32>*
  %scevgep67 = getelementptr <4 x i32>, <4 x i32>* %uglygep6566, i64 256, !dbg !70
  %wide.load49 = load <4 x i32>, <4 x i32>* %scevgep67, align 16, !dbg !70
  %uglygep69 = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv62, !dbg !72
  %uglygep6970 = bitcast i8* %uglygep69 to <4 x i32>*
  %scevgep71 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 256, !dbg !72
  %wide.load50 = load <4 x i32>, <4 x i32>* %scevgep71, align 16, !dbg !72
  %scevgep72 = getelementptr <4 x i32>, <4 x i32>* %uglygep6970, i64 257, !dbg !72
  %wide.load51 = load <4 x i32>, <4 x i32>* %scevgep72, align 16, !dbg !72
  %4 = mul <4 x i32> %wide.load50, %wide.load, !dbg !73
  %5 = mul <4 x i32> %wide.load51, %wide.load49, !dbg !73
  %6 = add <4 x i32> %4, %vec.phi47, !dbg !74
  %7 = add <4 x i32> %5, %vec.phi48, !dbg !74
  %8 = add i64 %lsr.iv, %lsr.iv62, !dbg !75
  %uglygep73 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %8, !dbg !75
  %uglygep7374 = bitcast i8* %uglygep73 to <4 x i32>*
  %scevgep75 = getelementptr <4 x i32>, <4 x i32>* %uglygep7374, i64 255, !dbg !75
  %wide.load52 = load <4 x i32>, <4 x i32>* %scevgep75, align 16, !dbg !75
  %9 = add i64 %lsr.iv, %lsr.iv62, !dbg !75
  %uglygep76 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %9, !dbg !75
  %uglygep7677 = bitcast i8* %uglygep76 to <4 x i32>*
  %scevgep78 = getelementptr <4 x i32>, <4 x i32>* %uglygep7677, i64 256, !dbg !75
  %wide.load53 = load <4 x i32>, <4 x i32>* %scevgep78, align 16, !dbg !75
  %10 = mul <4 x i32> %wide.load52, %wide.load50, !dbg !76
  %11 = mul <4 x i32> %wide.load53, %wide.load51, !dbg !76
  %12 = add <4 x i32> %10, %vec.phi, !dbg !77
  %13 = add <4 x i32> %11, %vec.phi46, !dbg !77
  %lsr.iv.next63 = add nsw i64 %lsr.iv62, 32, !dbg !68
  %14 = icmp eq i64 %lsr.iv.next63, 0, !dbg !68
  br i1 %14, label %middle.block, label %vector.body, !dbg !68, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %bin.rdx54 = add <4 x i32> %7, %6, !dbg !66
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx54, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !66
  %bin.rdx79 = add <4 x i32> %bin.rdx54, %rdx.shuf, !dbg !66
  %rdx.shuf80 = shufflevector <4 x i32> %bin.rdx79, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !66
  %bin.rdx81 = add <4 x i32> %bin.rdx79, %rdx.shuf80, !dbg !66
  %15 = extractelement <4 x i32> %bin.rdx81, i32 0, !dbg !66
  %bin.rdx = add <4 x i32> %13, %12, !dbg !66
  %rdx.shuf82 = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !66
  %bin.rdx83 = add <4 x i32> %bin.rdx, %rdx.shuf82, !dbg !66
  %rdx.shuf84 = shufflevector <4 x i32> %bin.rdx83, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !66
  %bin.rdx85 = add <4 x i32> %bin.rdx83, %rdx.shuf84, !dbg !66
  %16 = extractelement <4 x i32> %bin.rdx85, i32 0, !dbg !66
  call void @llvm.dbg.value(metadata i32 %15, metadata !58, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32 %16, metadata !62, metadata !DIExpression()), !dbg !64
  %mul16 = mul i32 %0, %15, !dbg !81
  %mul17 = mul i32 %1, %16, !dbg !82
  %add18 = add i32 %mul17, %mul16, !dbg !83
  %arrayidx20 = getelementptr [32000 x i32], [32000 x i32]* @b, i64 0, i64 %indvars.iv43, !dbg !84
  store i32 %add18, i32* %arrayidx20, align 4, !dbg !85
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !86
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next44, metadata !56, metadata !DIExpression()), !dbg !63
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4096, !dbg !65
  %exitcond45.not = icmp eq i64 %indvars.iv.next44, 1024, !dbg !87
  br i1 %exitcond45.not, label %for.end23, label %vector.ph, !dbg !65, !llvm.loop !88

for.end23:                                        ; preds = %middle.block
  ret void, !dbg !90

; uselistorder directives
  uselistorder i64 %lsr.iv62, { 5, 0, 1, 2, 3, 4 }
  uselistorder i64 %indvars.iv43, { 1, 0 }
  uselistorder i64 %lsr.iv, { 4, 0, 1, 2, 3 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 4, 3, 2 }
  uselistorder i64 0, { 2, 0, 1 }
  uselistorder i32 0, { 0, 1, 4, 5, 2, 3 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 6, 5, 4, 1, 2, 3, 0, 7 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50}
!llvm.ident = !{!51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex11.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !0, !21, !26, !28, !30, !32, !37, !39, !41, !43, !46}
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
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !45, line: 3, type: !10, isLocal: false, isDefinition: true)
!45 = !DIFile(filename: "LORE_no_mem_write/ex11.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "beta", scope: !2, file: !45, line: 3, type: !10, isLocal: false, isDefinition: true)
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!52 = distinct !DISubprogram(name: "ex11", scope: !45, file: !45, line: 6, type: !53, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !55)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !{!56, !57, !58, !62}
!56 = !DILocalVariable(name: "i", scope: !52, file: !45, line: 9, type: !10)
!57 = !DILocalVariable(name: "j", scope: !52, file: !45, line: 9, type: !10)
!58 = !DILocalVariable(name: "sum1", scope: !59, file: !45, line: 12, type: !10)
!59 = distinct !DILexicalBlock(scope: !60, file: !45, line: 11, column: 3)
!60 = distinct !DILexicalBlock(scope: !61, file: !45, line: 10, column: 3)
!61 = distinct !DILexicalBlock(scope: !52, file: !45, line: 10, column: 3)
!62 = !DILocalVariable(name: "sum2", scope: !59, file: !45, line: 13, type: !10)
!63 = !DILocation(line: 0, scope: !52)
!64 = !DILocation(line: 0, scope: !59)
!65 = !DILocation(line: 10, column: 3, scope: !61)
!66 = !DILocation(line: 14, column: 5, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !45, line: 14, column: 5)
!68 = !DILocation(line: 14, column: 28, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !45, line: 14, column: 5)
!70 = !DILocation(line: 16, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !69, file: !45, line: 15, column: 5)
!72 = !DILocation(line: 16, column: 26, scope: !71)
!73 = !DILocation(line: 16, column: 24, scope: !71)
!74 = !DILocation(line: 16, column: 12, scope: !71)
!75 = !DILocation(line: 17, column: 15, scope: !71)
!76 = !DILocation(line: 17, column: 24, scope: !71)
!77 = !DILocation(line: 17, column: 12, scope: !71)
!78 = distinct !{!78, !66, !79, !80}
!79 = !DILocation(line: 18, column: 5, scope: !67)
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !DILocation(line: 19, column: 18, scope: !59)
!82 = !DILocation(line: 19, column: 32, scope: !59)
!83 = !DILocation(line: 19, column: 25, scope: !59)
!84 = !DILocation(line: 19, column: 5, scope: !59)
!85 = !DILocation(line: 19, column: 10, scope: !59)
!86 = !DILocation(line: 10, column: 26, scope: !60)
!87 = !DILocation(line: 10, column: 17, scope: !60)
!88 = distinct !{!88, !65, !89}
!89 = !DILocation(line: 20, column: 3, scope: !61)
!90 = !DILocation(line: 21, column: 1, scope: !52)
