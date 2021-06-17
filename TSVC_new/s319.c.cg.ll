; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s319.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s319.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@val = dso_local local_unnamed_addr global i32 1, align 4, !dbg !0
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !34
@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !36
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !30
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !38
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !32
@temp = dso_local local_unnamed_addr global i32 0, align 4, !dbg !28
@X = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !6
@Y = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !13
@Z = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !15
@U = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !17
@V = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !19
@array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 16, !dbg !21
@x = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !26
@aa = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !40
@bb = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !45
@cc = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !47
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 16, !dbg !49
@indx = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !51
@xx = dso_local local_unnamed_addr global i32* null, align 8, !dbg !53
@yy = dso_local local_unnamed_addr global i32* null, align 8, !dbg !56
@arr = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !58

; Function Attrs: nofree noinline norecurse nounwind
define dso_local i32 @s319() local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !70, metadata !DIExpression()), !dbg !73
  br label %vector.body, !dbg !74

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ 0, %entry ], !dbg !75
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %6, %vector.body ]
  %vec.phi33 = phi <4 x i32> [ zeroinitializer, %entry ], [ %7, %vector.body ]
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @c to i8*), i64 %lsr.iv, !dbg !77
  %uglygep42 = bitcast i8* %uglygep to <4 x i32>*
  %wide.load = load <4 x i32>, <4 x i32>* %uglygep42, align 16, !dbg !77
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep42, i64 1, !dbg !77
  %wide.load34 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !77
  %uglygep43 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !79
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %wide.load35 = load <4 x i32>, <4 x i32>* %uglygep4344, align 16, !dbg !79
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 1, !dbg !79
  %wide.load36 = load <4 x i32>, <4 x i32>* %scevgep45, align 16, !dbg !79
  %0 = add <4 x i32> %wide.load35, %wide.load, !dbg !80
  %1 = add <4 x i32> %wide.load36, %wide.load34, !dbg !80
  %uglygep46 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !81
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  store <4 x i32> %0, <4 x i32>* %uglygep4647, align 16, !dbg !81
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 1, !dbg !81
  store <4 x i32> %1, <4 x i32>* %scevgep48, align 16, !dbg !81
  %2 = add <4 x i32> %0, %vec.phi, !dbg !82
  %3 = add <4 x i32> %1, %vec.phi33, !dbg !82
  %uglygep49 = getelementptr i8, i8* bitcast ([32000 x i32]* @e to i8*), i64 %lsr.iv, !dbg !83
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %wide.load37 = load <4 x i32>, <4 x i32>* %uglygep4950, align 16, !dbg !83
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 1, !dbg !83
  %wide.load38 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !83
  %4 = add <4 x i32> %wide.load37, %wide.load, !dbg !84
  %5 = add <4 x i32> %wide.load38, %wide.load34, !dbg !84
  %uglygep52 = getelementptr i8, i8* bitcast ([32000 x i32]* @b to i8*), i64 %lsr.iv, !dbg !85
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  store <4 x i32> %4, <4 x i32>* %uglygep5253, align 16, !dbg !85
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 1, !dbg !85
  store <4 x i32> %5, <4 x i32>* %scevgep54, align 16, !dbg !85
  %6 = add <4 x i32> %2, %4, !dbg !86
  %7 = add <4 x i32> %3, %5, !dbg !86
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 32, !dbg !75
  %8 = icmp eq i64 %lsr.iv.next, 128000, !dbg !75
  br i1 %8, label %middle.block, label %vector.body, !dbg !75, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %7, %6, !dbg !74
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !74
  %bin.rdx55 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !74
  %rdx.shuf56 = shufflevector <4 x i32> %bin.rdx55, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !74
  %bin.rdx57 = add <4 x i32> %bin.rdx55, %rdx.shuf56, !dbg !74
  %9 = extractelement <4 x i32> %bin.rdx57, i32 0, !dbg !74
  call void @llvm.dbg.value(metadata i32 %9, metadata !69, metadata !DIExpression()), !dbg !72
  store i32 %9, i32* @temp, align 4, !dbg !90
  ret i32 0, !dbg !91

; uselistorder directives
  uselistorder i64 %lsr.iv, { 5, 0, 1, 2, 3, 4 }
  uselistorder i32 0, { 2, 0, 1 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 1, 7, 8, 9, 10, 11, 12, 5, 2, 6, 3, 4 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!60, !61, !62}
!llvm.ident = !{!63}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "val", scope: !2, file: !8, line: 21, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/TSVC_new/s319.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/TSVC_new")
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
!64 = distinct !DISubprogram(name: "s319", scope: !65, file: !65, line: 3, type: !66, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!65 = !DIFile(filename: "TSVC_new/s319.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!66 = !DISubroutineType(types: !67)
!67 = !{!10}
!68 = !{!69, !70}
!69 = !DILocalVariable(name: "sum", scope: !64, file: !65, line: 9, type: !10)
!70 = !DILocalVariable(name: "i", scope: !71, file: !65, line: 11, type: !10)
!71 = distinct !DILexicalBlock(scope: !64, file: !65, line: 11, column: 3)
!72 = !DILocation(line: 0, scope: !64)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 11, column: 3, scope: !71)
!75 = !DILocation(line: 11, column: 29, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !65, line: 11, column: 3)
!77 = !DILocation(line: 12, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !65, line: 11, column: 33)
!79 = !DILocation(line: 12, column: 18, scope: !78)
!80 = !DILocation(line: 12, column: 16, scope: !78)
!81 = !DILocation(line: 12, column: 9, scope: !78)
!82 = !DILocation(line: 13, column: 8, scope: !78)
!83 = !DILocation(line: 14, column: 18, scope: !78)
!84 = !DILocation(line: 14, column: 16, scope: !78)
!85 = !DILocation(line: 14, column: 9, scope: !78)
!86 = !DILocation(line: 15, column: 8, scope: !78)
!87 = distinct !{!87, !74, !88, !89}
!88 = !DILocation(line: 16, column: 3, scope: !71)
!89 = !{!"llvm.loop.isvectorized", i32 1}
!90 = !DILocation(line: 17, column: 7, scope: !64)
!91 = !DILocation(line: 18, column: 2, scope: !64)
