; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex7.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@d = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !8
@b = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !14
@c = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !16
@e = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !18
@aa = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !20
@bb = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !25
@cc = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !27
@dd = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !29
@tmp = dso_local local_unnamed_addr global [1024 x [1024 x i32]] zeroinitializer, align 16, !dbg !31
@aaa = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !33
@bbb = dso_local local_unnamed_addr global [256 x [256 x [256 x i32]]] zeroinitializer, align 16, !dbg !38
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !40
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !42

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex7() local_unnamed_addr #0 !dbg !48 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !56
  br label %vector.body, !dbg !57

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !58
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %18, %vector.body ]
  %vec.phi19 = phi <4 x i32> [ zeroinitializer, %entry ], [ %19, %vector.body ]
  %uglygep28 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !60
  %uglygep2829 = bitcast i8* %uglygep28 to <4 x i32>*
  %scevgep30 = getelementptr <4 x i32>, <4 x i32>* %uglygep2829, i64 8000, !dbg !60
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep30, align 16, !dbg !60
  %scevgep31 = getelementptr <4 x i32>, <4 x i32>* %uglygep2829, i64 8001, !dbg !60
  %wide.load20 = load <4 x i32>, <4 x i32>* %scevgep31, align 16, !dbg !60
  %0 = icmp ne <4 x i32> %wide.load, zeroinitializer, !dbg !63
  %1 = icmp ne <4 x i32> %wide.load20, zeroinitializer, !dbg !63
  %2 = zext <4 x i1> %0 to <4 x i32>, !dbg !63
  %3 = zext <4 x i1> %1 to <4 x i32>, !dbg !63
  %4 = icmp sgt <4 x i32> %wide.load, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %5 = icmp sgt <4 x i32> %wide.load20, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %6 = select <4 x i1> %4, <4 x i32> %2, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %7 = select <4 x i1> %5, <4 x i32> %3, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %8 = add <4 x i32> %6, %vec.phi, !dbg !63
  %9 = add <4 x i32> %7, %vec.phi19, !dbg !63
  %uglygep25 = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !60
  %uglygep2526 = bitcast i8* %uglygep25 to <4 x i32>*
  %scevgep27 = getelementptr <4 x i32>, <4 x i32>* %uglygep2526, i64 8002, !dbg !60
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep27, align 16, !dbg !60
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @d to i8*), i64 %lsr.iv, !dbg !60
  %uglygep24 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep24, i64 8003, !dbg !60
  %wide.load20.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !60
  %10 = icmp ne <4 x i32> %wide.load.1, zeroinitializer, !dbg !63
  %11 = icmp ne <4 x i32> %wide.load20.1, zeroinitializer, !dbg !63
  %12 = zext <4 x i1> %10 to <4 x i32>, !dbg !63
  %13 = zext <4 x i1> %11 to <4 x i32>, !dbg !63
  %14 = icmp sgt <4 x i32> %wide.load.1, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %15 = icmp sgt <4 x i32> %wide.load20.1, <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %16 = select <4 x i1> %14, <4 x i32> %12, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %17 = select <4 x i1> %15, <4 x i32> %13, <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>, !dbg !63
  %18 = add <4 x i32> %16, %8, !dbg !63
  %19 = add <4 x i32> %17, %9, !dbg !63
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !58
  %20 = icmp eq i64 %lsr.iv.next, 0, !dbg !58
  br i1 %20, label %middle.block, label %vector.body, !dbg !58, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %19, %18, !dbg !57
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !57
  %bin.rdx32 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !57
  %rdx.shuf33 = shufflevector <4 x i32> %bin.rdx32, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !57
  %bin.rdx34 = add <4 x i32> %bin.rdx32, %rdx.shuf33, !dbg !57
  %21 = extractelement <4 x i32> %bin.rdx34, i32 0, !dbg !57
  call void @llvm.dbg.value(metadata i32 %21, metadata !52, metadata !DIExpression()), !dbg !55
  ret i32 %21, !dbg !67

; uselistorder directives
  uselistorder i64 %lsr.iv, { 3, 2, 1, 0 }
  uselistorder [32000 x i32] zeroinitializer, { 0, 2, 3, 4, 1 }
  uselistorder i8* bitcast ([32000 x i32]* @d to i8*), { 2, 1, 0 }
  uselistorder <4 x i32> zeroinitializer, { 0, 1, 4, 5, 2, 3 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone willreturn
declare i32 @llvm.experimental.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { noinline norecurse nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!44, !45, !46}
!llvm.ident = !{!47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex7.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !0, !18, !20, !25, !27, !29, !31, !33, !38, !40, !42}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!10 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024000, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 32000)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !10, line: 24, type: !11, isLocal: false, isDefinition: true, align: 128)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 33554432, elements: !23)
!23 = !{!24, !24}
!24 = !DISubrange(count: 1024)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "dd", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !10, line: 25, type: !22, isLocal: false, isDefinition: true, align: 128)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "aaa", scope: !2, file: !10, line: 25, type: !35, isLocal: false, isDefinition: true, align: 128)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 536870912, elements: !36)
!36 = !{!37, !37, !37}
!37 = !DISubrange(count: 256)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "bbb", scope: !2, file: !10, line: 25, type: !35, isLocal: false, isDefinition: true, align: 128)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !10, line: 26, type: !6, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !10, line: 26, type: !6, isLocal: false, isDefinition: true)
!44 = !{i32 7, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{i32 1, !"wchar_size", i32 4}
!47 = !{!"clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)"}
!48 = distinct !DISubprogram(name: "ex7", scope: !49, file: !49, line: 5, type: !50, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!49 = !DIFile(filename: "LORE_no_mem_write/ex7.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!50 = !DISubroutineType(types: !5)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "sum", scope: !48, file: !49, line: 8, type: !6)
!53 = !DILocalVariable(name: "i", scope: !54, file: !49, line: 9, type: !6)
!54 = distinct !DILexicalBlock(scope: !48, file: !49, line: 9, column: 3)
!55 = !DILocation(line: 0, scope: !48)
!56 = !DILocation(line: 0, scope: !54)
!57 = !DILocation(line: 9, column: 3, scope: !54)
!58 = !DILocation(line: 9, column: 29, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !49, line: 9, column: 3)
!60 = !DILocation(line: 10, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !49, line: 10, column: 9)
!62 = distinct !DILexicalBlock(scope: !59, file: !49, line: 9, column: 33)
!63 = !DILocation(line: 10, column: 9, scope: !62)
!64 = distinct !{!64, !57, !65, !66}
!65 = !DILocation(line: 17, column: 3, scope: !54)
!66 = !{!"llvm.loop.isvectorized", i32 1}
!67 = !DILocation(line: 18, column: 3, scope: !48)
