; ModuleID = '/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex102.c'
source_filename = "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex102.c"
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
define dso_local i32 @ex102() local_unnamed_addr #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !59
  br label %vector.ph, !dbg !60

vector.ph:                                        ; preds = %for.cond.cleanup3, %entry
  %lsr.iv = phi i64 [ %lsr.iv.next, %for.cond.cleanup3 ], [ 48, %entry ]
  %indvars.iv25 = phi i64 [ 0, %entry ], [ %indvars.iv.next26, %for.cond.cleanup3 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv25, metadata !53, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata i32 0, metadata !55, metadata !DIExpression()), !dbg !61
  br label %vector.body, !dbg !62

vector.body:                                      ; preds = %vector.body, %vector.ph
  %lsr.iv31 = phi i64 [ %lsr.iv.next32, %vector.body ], [ -1024, %vector.ph ], !dbg !63
  %0 = shl nsw i64 %lsr.iv31, 2, !dbg !65
  %1 = add i64 %lsr.iv, %0, !dbg !65
  %uglygep37 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %1, !dbg !65
  %uglygep3738 = bitcast i8* %uglygep37 to <4 x i32>*
  %scevgep39 = getelementptr <4 x i32>, <4 x i32>* %uglygep3738, i64 253, !dbg !65
  %wide.load = load <4 x i32>, <4 x i32>* %scevgep39, align 16, !dbg !65
  %2 = shl nsw i64 %lsr.iv31, 2, !dbg !65
  %3 = add i64 %lsr.iv, %2, !dbg !65
  %uglygep40 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %3, !dbg !65
  %uglygep4041 = bitcast i8* %uglygep40 to <4 x i32>*
  %scevgep42 = getelementptr <4 x i32>, <4 x i32>* %uglygep4041, i64 254, !dbg !65
  %wide.load28 = load <4 x i32>, <4 x i32>* %scevgep42, align 16, !dbg !65
  %4 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %5 = add i64 %lsr.iv, %4, !dbg !66
  %uglygep55 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %5, !dbg !66
  %uglygep5556 = bitcast i8* %uglygep55 to <4 x i32>*
  %scevgep57 = getelementptr <4 x i32>, <4 x i32>* %uglygep5556, i64 253, !dbg !66
  %wide.load29 = load <4 x i32>, <4 x i32>* %scevgep57, align 16, !dbg !66
  %6 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %7 = add i64 %lsr.iv, %6, !dbg !66
  %uglygep64 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %7, !dbg !66
  %uglygep6465 = bitcast i8* %uglygep64 to <4 x i32>*
  %scevgep66 = getelementptr <4 x i32>, <4 x i32>* %uglygep6465, i64 254, !dbg !66
  %wide.load30 = load <4 x i32>, <4 x i32>* %scevgep66, align 16, !dbg !66
  %8 = add <4 x i32> %wide.load29, %wide.load, !dbg !66
  %9 = add <4 x i32> %wide.load30, %wide.load28, !dbg !66
  %10 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %11 = add i64 %lsr.iv, %10, !dbg !66
  %uglygep58 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %11, !dbg !66
  %uglygep5859 = bitcast i8* %uglygep58 to <4 x i32>*
  %scevgep60 = getelementptr <4 x i32>, <4 x i32>* %uglygep5859, i64 253, !dbg !66
  store <4 x i32> %8, <4 x i32>* %scevgep60, align 16, !dbg !66
  %12 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %13 = add i64 %lsr.iv, %12, !dbg !66
  %uglygep61 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %13, !dbg !66
  %uglygep6162 = bitcast i8* %uglygep61 to <4 x i32>*
  %scevgep63 = getelementptr <4 x i32>, <4 x i32>* %uglygep6162, i64 254, !dbg !66
  store <4 x i32> %9, <4 x i32>* %scevgep63, align 16, !dbg !66
  %14 = shl nsw i64 %lsr.iv31, 2, !dbg !65
  %15 = add i64 %lsr.iv, %14, !dbg !65
  %uglygep34 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %15, !dbg !65
  %uglygep3435 = bitcast i8* %uglygep34 to <4 x i32>*
  %scevgep36 = getelementptr <4 x i32>, <4 x i32>* %uglygep3435, i64 255, !dbg !65
  %wide.load.1 = load <4 x i32>, <4 x i32>* %scevgep36, align 16, !dbg !65
  %16 = shl nsw i64 %lsr.iv31, 2, !dbg !65
  %17 = add i64 %lsr.iv, %16, !dbg !65
  %uglygep = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), i64 %17, !dbg !65
  %uglygep33 = bitcast i8* %uglygep to <4 x i32>*
  %scevgep = getelementptr <4 x i32>, <4 x i32>* %uglygep33, i64 256, !dbg !65
  %wide.load28.1 = load <4 x i32>, <4 x i32>* %scevgep, align 16, !dbg !65
  %18 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %19 = add i64 %lsr.iv, %18, !dbg !66
  %uglygep52 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %19, !dbg !66
  %uglygep5253 = bitcast i8* %uglygep52 to <4 x i32>*
  %scevgep54 = getelementptr <4 x i32>, <4 x i32>* %uglygep5253, i64 255, !dbg !66
  %wide.load29.1 = load <4 x i32>, <4 x i32>* %scevgep54, align 16, !dbg !66
  %20 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %21 = add i64 %lsr.iv, %20, !dbg !66
  %uglygep49 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %21, !dbg !66
  %uglygep4950 = bitcast i8* %uglygep49 to <4 x i32>*
  %scevgep51 = getelementptr <4 x i32>, <4 x i32>* %uglygep4950, i64 256, !dbg !66
  %wide.load30.1 = load <4 x i32>, <4 x i32>* %scevgep51, align 16, !dbg !66
  %22 = add <4 x i32> %wide.load29.1, %wide.load.1, !dbg !66
  %23 = add <4 x i32> %wide.load30.1, %wide.load28.1, !dbg !66
  %24 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %25 = add i64 %lsr.iv, %24, !dbg !66
  %uglygep43 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %25, !dbg !66
  %uglygep4344 = bitcast i8* %uglygep43 to <4 x i32>*
  %scevgep45 = getelementptr <4 x i32>, <4 x i32>* %uglygep4344, i64 255, !dbg !66
  store <4 x i32> %22, <4 x i32>* %scevgep45, align 16, !dbg !66
  %26 = shl nsw i64 %lsr.iv31, 2, !dbg !66
  %27 = add i64 %lsr.iv, %26, !dbg !66
  %uglygep46 = getelementptr i8, i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), i64 %27, !dbg !66
  %uglygep4647 = bitcast i8* %uglygep46 to <4 x i32>*
  %scevgep48 = getelementptr <4 x i32>, <4 x i32>* %uglygep4647, i64 256, !dbg !66
  store <4 x i32> %23, <4 x i32>* %scevgep48, align 16, !dbg !66
  %lsr.iv.next32 = add nsw i64 %lsr.iv31, 16, !dbg !63
  %28 = icmp eq i64 %lsr.iv.next32, 0, !dbg !63
  br i1 %28, label %for.cond.cleanup3, label %vector.body, !dbg !63, !llvm.loop !67

for.cond.cleanup:                                 ; preds = %for.cond.cleanup3
  ret i32 0, !dbg !70

for.cond.cleanup3:                                ; preds = %vector.body
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !71
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next26, metadata !53, metadata !DIExpression()), !dbg !59
  %lsr.iv.next = add nuw nsw i64 %lsr.iv, 4096, !dbg !60
  %exitcond27.not = icmp eq i64 %indvars.iv.next26, 1024, !dbg !72
  br i1 %exitcond27.not, label %for.cond.cleanup, label %vector.ph, !dbg !60, !llvm.loop !73

; uselistorder directives
  uselistorder i64 %lsr.iv31, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 %lsr.iv, { 12, 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder i64 256, { 1, 0, 2 }
  uselistorder i64 255, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @bb to i8*), { 6, 7, 5, 4, 1, 2, 0, 3 }
  uselistorder i64 254, { 1, 0, 2 }
  uselistorder i8* bitcast ([1024 x [1024 x i32]]* @aa to i8*), { 3, 2, 0, 1 }
  uselistorder i64 2, { 6, 7, 5, 4, 11, 10, 1, 2, 0, 3, 8, 9 }
  uselistorder void (metadata, metadata, metadata)* @llvm.dbg.value, { 2, 1, 0, 3, 4 }
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { nofree noinline norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-builtins" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !8, line: 25, type: !23, isLocal: false, isDefinition: true, align: 128)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0 (https://adityanathan@github.com/bsorav/llvm-project2 38ec7a36650960f496d6a904f406b2c0ce54bdae)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/adityanathan/superopt-project/superopt-tests/LORE_mem_write/ex102.c", directory: "/home/adityanathan/superopt-project/superopt-tests/build/LORE_mem_write")
!4 = !{}
!5 = !{!6, !13, !15, !17, !19, !0, !21, !26, !28, !30, !32, !37, !39, !41}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !8, line: 24, type: !9, isLocal: false, isDefinition: true, align: 128)
!8 = !DIFile(filename: "LORE_mem_write/globals.h", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!47 = distinct !DISubprogram(name: "ex102", scope: !48, file: !48, line: 4, type: !49, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DIFile(filename: "LORE_mem_write/ex102.c", directory: "/home/adityanathan/superopt-project/superopt-tests")
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
!65 = !DILocation(line: 8, column: 17, scope: !64)
!66 = !DILocation(line: 8, column: 14, scope: !64)
!67 = distinct !{!67, !62, !68, !69}
!68 = !DILocation(line: 8, column: 24, scope: !56)
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !DILocation(line: 9, column: 2, scope: !47)
!71 = !DILocation(line: 6, column: 29, scope: !57)
!72 = !DILocation(line: 6, column: 20, scope: !57)
!73 = distinct !{!73, !60, !74}
!74 = !DILocation(line: 8, column: 24, scope: !54)
