; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex8.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = dso_local local_unnamed_addr global [32000 x i32] zeroinitializer, align 16, !dbg !0
@x = dso_local local_unnamed_addr global i32 0, align 4, !dbg !39
@y = dso_local local_unnamed_addr global i32 0, align 4, !dbg !41
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

; Function Attrs: noinline norecurse nounwind readonly
define dso_local i32 @ex8() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !54
  %0 = load i32, i32* @x, align 4, !dbg !55
  %1 = load i32, i32* @y, align 4, !dbg !55
  %broadcast.splatinsert = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !58
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !58
  %broadcast.splatinsert11 = insertelement <4 x i32> undef, i32 %1, i32 0, !dbg !58
  %broadcast.splat12 = shufflevector <4 x i32> %broadcast.splatinsert11, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !58
  %broadcast.splatinsert13 = insertelement <4 x i32> undef, i32 %0, i32 0, !dbg !58
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !58
  %broadcast.splatinsert15 = insertelement <4 x i32> undef, i32 %1, i32 0, !dbg !58
  %broadcast.splat16 = shufflevector <4 x i32> %broadcast.splatinsert15, <4 x i32> undef, <4 x i32> zeroinitializer, !dbg !58
  br label %vector.body, !dbg !58

vector.body:                                      ; preds = %vector.body, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %vector.body ], [ -128000, %entry ], !dbg !59
  %vec.phi = phi <4 x i32> [ zeroinitializer, %entry ], [ %12, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %entry ], [ %13, %vector.body ]
  %uglygep24 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep2425 = bitcast i8* %uglygep24 to <4 x i32>*
  %scevgep26 = getelementptr <4 x i32>, <4 x i32>* %uglygep2425, i64 8000, !dbg !60
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep26, align 16, !dbg !60
  %scevgep27 = getelementptr <4 x i32>, <4 x i32>* %uglygep2425, i64 8001, !dbg !60
  %wide.load10 = load <4 x i32>, <4 x i32>* %scevgep27, align 16, !dbg !60
  %2 = icmp slt <4 x i32> %wide.load, zeroinitializer, !dbg !61
  %3 = icmp slt <4 x i32> %wide.load10, zeroinitializer, !dbg !61
  %4 = select <4 x i1> %2, <4 x i32> %broadcast.splat, <4 x i32> %broadcast.splat12, !dbg !60
  %5 = select <4 x i1> %3, <4 x i32> %broadcast.splat14, <4 x i32> %broadcast.splat16, !dbg !60
  %6 = add <4 x i32> %4, %vec.phi, !dbg !62
  %7 = add <4 x i32> %5, %vec.phi9, !dbg !62
  %uglygep21 = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep2122 = bitcast i8* %uglygep21 to <4 x i32>*
  %scevgep23 = getelementptr <4 x i32>, <4 x i32>* %uglygep2122, i64 8002, !dbg !60
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep23, align 16, !dbg !60
  %uglygep = getelementptr i8, i8* bitcast ([32000 x i32]* @a to i8*), i64 %lsr.iv, !dbg !60
  %uglygep20 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep20, i64 8003, !dbg !60
  %wide.load10.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !60
  %8 = icmp slt <4 x i32> %wide.load.1, zeroinitializer, !dbg !61
  %9 = icmp slt <4 x i32> %wide.load10.1, zeroinitializer, !dbg !61
  %10 = select <4 x i1> %8, <4 x i32> %broadcast.splat, <4 x i32> %broadcast.splat12, !dbg !60
  %11 = select <4 x i1> %9, <4 x i32> %broadcast.splat14, <4 x i32> %broadcast.splat16, !dbg !60
  %12 = add <4 x i32> %10, %6, !dbg !62
  %13 = add <4 x i32> %11, %7, !dbg !62
  %lsr.iv.next = add nsw i64 %lsr.iv, 64, !dbg !59
  %14 = icmp eq i64 %lsr.iv.next, 0, !dbg !59
  br i1 %14, label %middle.block, label %vector.body, !dbg !59, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %13, %12, !dbg !58
  %rdx.shuf = shufflevector <4 x i32> %bin.rdx, <4 x i32> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>, !dbg !58
  %bin.rdx28 = add <4 x i32> %bin.rdx, %rdx.shuf, !dbg !58
  %rdx.shuf29 = shufflevector <4 x i32> %bin.rdx28, <4 x i32> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>, !dbg !58
  %bin.rdx30 = add <4 x i32> %bin.rdx28, %rdx.shuf29, !dbg !58
  %15 = extractelement <4 x i32> %bin.rdx30, i32 0, !dbg !58
  call void @llvm.dbg.value(metadata i32 %15, metadata !53, metadata !DIExpression()), !dbg !54
  ret i32 %15, !dbg !66

; uselistorder directives
  uselistorder i64 %lsr.iv, { 3, 2, 1, 0 }
  uselistorder i8* bitcast ([32000 x i32]* @a to i8*), { 2, 1, 0 }
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
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_no_mem_write/ex8.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_no_mem_write")
!4 = !{}
!5 = !{!0, !6, !13, !15, !17, !19, !24, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_no_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!47 = distinct !DISubprogram(name: "ex8", scope: !48, file: !48, line: 5, type: !49, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_no_mem_write/ex8.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
!49 = !DISubroutineType(types: !50)
!50 = !{!10}
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "i", scope: !47, file: !48, line: 7, type: !10)
!53 = !DILocalVariable(name: "sum", scope: !47, file: !48, line: 8, type: !10)
!54 = !DILocation(line: 0, scope: !47)
!55 = !DILocation(line: 0, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !48, line: 9, column: 3)
!57 = distinct !DILexicalBlock(scope: !47, file: !48, line: 9, column: 3)
!58 = !DILocation(line: 9, column: 3, scope: !57)
!59 = !DILocation(line: 9, column: 25, scope: !56)
!60 = !DILocation(line: 10, column: 12, scope: !56)
!61 = !DILocation(line: 10, column: 17, scope: !56)
!62 = !DILocation(line: 10, column: 9, scope: !56)
!63 = distinct !{!63, !58, !64, !65}
!64 = !DILocation(line: 10, column: 27, scope: !57)
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !DILocation(line: 11, column: 3, scope: !47)
